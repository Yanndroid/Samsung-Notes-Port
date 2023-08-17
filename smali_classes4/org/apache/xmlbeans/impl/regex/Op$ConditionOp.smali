.class Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;
.super Lorg/apache/xmlbeans/impl/regex/Op;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionOp"
.end annotation


# instance fields
.field public condition:Lorg/apache/xmlbeans/impl/regex/Op;

.field public no:Lorg/apache/xmlbeans/impl/regex/Op;

.field public refNumber:I

.field public yes:Lorg/apache/xmlbeans/impl/regex/Op;


# direct methods
.method public constructor <init>(IILorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Op;-><init>(I)V

    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->condition:Lorg/apache/xmlbeans/impl/regex/Op;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->yes:Lorg/apache/xmlbeans/impl/regex/Op;

    iput-object p5, p0, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->no:Lorg/apache/xmlbeans/impl/regex/Op;

    return-void
.end method
