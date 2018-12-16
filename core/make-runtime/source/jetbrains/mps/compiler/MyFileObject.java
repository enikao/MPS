/*
 * Copyright 2003-2018 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.compiler;

import org.jetbrains.annotations.NotNull;

import javax.lang.model.element.Element;
import javax.tools.SimpleJavaFileObject;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;

public class MyFileObject extends SimpleJavaFileObject {
  private byte[] content;
  private final Element[] originatingElements;

  protected MyFileObject(String s, Kind kind, Element... originatingElements) {
    super(convertToUri(s), kind);
    this.originatingElements = originatingElements;
  }

  @NotNull
  private static URI convertToUri(String s) {
    try {
      return new URI(s);
    } catch (URISyntaxException e) {
      throw new RuntimeException(e);
    }
  }

  @Override
  public OutputStream openOutputStream() throws IOException {
    return new ByteArrayOutputStream() {
      @Override
      public void close() throws IOException {
        onCloseOutput(this);
        super.close();
      }
    };
  }

  protected void onCloseOutput(ByteArrayOutputStream out) {
    content = out.toByteArray();
  }

  public byte[] getContent() {
    return content;
  }

  public Element[] getOriginatingElements() {
    return originatingElements;
  }
}
