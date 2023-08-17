.class public Lorg/apache/xmlbeans/xml/stream/XMLStreamException;
.super Ljava/io/IOException;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/xml/stream/utils/NestedThrowable;


# instance fields
.field public th:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/xmlbeans/xml/stream/XMLStreamException;->th:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/xml/stream/XMLStreamException;->th:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/xml/stream/XMLStreamException;->th:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNested()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/xml/stream/XMLStreamException;->th:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getNestedException()Ljava/lang/Throwable;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/xml/stream/XMLStreamException;->getNested()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/xml/stream/XMLStreamException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/xml/stream/utils/NestedThrowable$Util;->printStackTrace(Lorg/apache/xmlbeans/xml/stream/utils/NestedThrowable;Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/xml/stream/utils/NestedThrowable$Util;->printStackTrace(Lorg/apache/xmlbeans/xml/stream/utils/NestedThrowable;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public superPrintStackTrace(Ljava/io/PrintStream;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public superPrintStackTrace(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public superToString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/xml/stream/utils/NestedThrowable$Util;->toString(Lorg/apache/xmlbeans/xml/stream/utils/NestedThrowable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
