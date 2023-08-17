.class Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;
.super Lorg/apache/xmlbeans/impl/regex/Op;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnionOp"
.end annotation


# instance fields
.field public branches:Ljava/util/Vector;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Op;-><init>(I)V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1, p2}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;->branches:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addElement(Lorg/apache/xmlbeans/impl/regex/Op;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;->branches:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public elementAt(I)Lorg/apache/xmlbeans/impl/regex/Op;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;->branches:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/regex/Op;

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;->branches:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
