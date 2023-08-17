.class Lorg/apache/xmlbeans/impl/regex/Op$CharOp;
.super Lorg/apache/xmlbeans/impl/regex/Op;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharOp"
.end annotation


# instance fields
.field public charData:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Op;-><init>(I)V

    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/Op$CharOp;->charData:I

    return-void
.end method


# virtual methods
.method public getData()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Op$CharOp;->charData:I

    return v0
.end method
