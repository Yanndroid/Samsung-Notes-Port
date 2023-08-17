.class Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;
.super Lorg/apache/xmlbeans/impl/regex/Op;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildOp"
.end annotation


# instance fields
.field public child:Lorg/apache/xmlbeans/impl/regex/Op;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Op;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getChild()Lorg/apache/xmlbeans/impl/regex/Op;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;->child:Lorg/apache/xmlbeans/impl/regex/Op;

    return-object v0
.end method

.method public setChild(Lorg/apache/xmlbeans/impl/regex/Op;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;->child:Lorg/apache/xmlbeans/impl/regex/Op;

    return-void
.end method
