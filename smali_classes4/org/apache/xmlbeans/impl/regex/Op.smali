.class Lorg/apache/xmlbeans/impl/regex/Op;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;,
        Lorg/apache/xmlbeans/impl/regex/Op$StringOp;,
        Lorg/apache/xmlbeans/impl/regex/Op$RangeOp;,
        Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;,
        Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;,
        Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;,
        Lorg/apache/xmlbeans/impl/regex/Op$CharOp;
    }
.end annotation


# static fields
.field public static final ANCHOR:I = 0x5

.field public static final BACKREFERENCE:I = 0x10

.field public static final CAPTURE:I = 0xf

.field public static final CHAR:I = 0x1

.field public static final CLOSURE:I = 0x7

.field public static final CONDITION:I = 0x1a

.field public static final COUNT:Z = false

.field public static final DOT:I = 0x0

.field public static final INDEPENDENT:I = 0x18

.field public static final LOOKAHEAD:I = 0x14

.field public static final LOOKBEHIND:I = 0x16

.field public static final MODIFIER:I = 0x19

.field public static final NEGATIVELOOKAHEAD:I = 0x15

.field public static final NEGATIVELOOKBEHIND:I = 0x17

.field public static final NONGREEDYCLOSURE:I = 0x8

.field public static final NONGREEDYQUESTION:I = 0xa

.field public static final NRANGE:I = 0x4

.field public static final QUESTION:I = 0x9

.field public static final RANGE:I = 0x3

.field public static final STRING:I = 0x6

.field public static final UNION:I = 0xb

.field public static nofinstances:I


# instance fields
.field public next:Lorg/apache/xmlbeans/impl/regex/Op;

.field public type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    iput p1, p0, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    return-void
.end method

.method public static createAnchor(I)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/regex/Op$CharOp;-><init>(II)V

    return-object v0
.end method

.method public static createBackReference(I)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/regex/Op$CharOp;-><init>(II)V

    return-object v0
.end method

.method public static createCapture(ILorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/regex/Op$CharOp;-><init>(II)V

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    return-object v0
.end method

.method public static createChar(I)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/regex/Op$CharOp;-><init>(II)V

    return-object v0
.end method

.method public static createClosure(I)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;

    const/4 v1, 0x7

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;-><init>(III)V

    return-object v0
.end method

.method public static createCondition(Lorg/apache/xmlbeans/impl/regex/Op;ILorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;
    .locals 7

    new-instance v6, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;

    const/16 v1, 0x1a

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;-><init>(IILorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)V

    iput-object p0, v6, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    return-object v6
.end method

.method public static createDot()Lorg/apache/xmlbeans/impl/regex/Op;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/regex/Op;-><init>(I)V

    return-object v0
.end method

.method public static createIndependent(Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;->setChild(Lorg/apache/xmlbeans/impl/regex/Op;)V

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    return-object v0
.end method

.method public static createLook(ILorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;-><init>(I)V

    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;->setChild(Lorg/apache/xmlbeans/impl/regex/Op;)V

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    return-object v0
.end method

.method public static createModifier(Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;II)Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;-><init>(III)V

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;->setChild(Lorg/apache/xmlbeans/impl/regex/Op;)V

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    return-object v0
.end method

.method public static createNonGreedyClosure()Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;-><init>(I)V

    return-object v0
.end method

.method public static createQuestion(Z)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    :goto_0
    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;-><init>(I)V

    return-object v0
.end method

.method public static createRange(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Op$RangeOp;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$RangeOp;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/regex/Op$RangeOp;-><init>(ILorg/apache/xmlbeans/impl/regex/Token;)V

    return-object v0
.end method

.method public static createString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/regex/Op$StringOp;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$StringOp;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/regex/Op$StringOp;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createUnion(I)Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public elementAt(I)Lorg/apache/xmlbeans/impl/regex/Op;
    .locals 2

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Internal Error: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChild()Lorg/apache/xmlbeans/impl/regex/Op;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Internal Error: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getData()I
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Internal Error: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getData2()I
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Internal Error: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Internal Error: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Internal Error: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
