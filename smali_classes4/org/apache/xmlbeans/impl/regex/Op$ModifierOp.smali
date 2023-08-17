.class Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;
.super Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModifierOp"
.end annotation


# instance fields
.field public v1:I

.field public v2:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;-><init>(I)V

    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;->v1:I

    iput p3, p0, Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;->v2:I

    return-void
.end method


# virtual methods
.method public getData()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;->v1:I

    return v0
.end method

.method public getData2()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;->v2:I

    return v0
.end method
