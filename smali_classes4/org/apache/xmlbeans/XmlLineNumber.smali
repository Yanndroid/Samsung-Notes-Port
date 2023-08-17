.class public Lorg/apache/xmlbeans/XmlLineNumber;
.super Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
.source "SourceFile"


# instance fields
.field private _column:I

.field private _line:I

.field private _offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/xmlbeans/XmlLineNumber;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xmlbeans/XmlLineNumber;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;-><init>(Z)V

    iput p1, p0, Lorg/apache/xmlbeans/XmlLineNumber;->_line:I

    iput p2, p0, Lorg/apache/xmlbeans/XmlLineNumber;->_column:I

    iput p3, p0, Lorg/apache/xmlbeans/XmlLineNumber;->_offset:I

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/XmlLineNumber;->_column:I

    return v0
.end method

.method public getLine()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/XmlLineNumber;->_line:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/XmlLineNumber;->_offset:I

    return v0
.end method
