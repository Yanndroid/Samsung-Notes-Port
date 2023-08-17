.class public Lorg/apache/xmlbeans/impl/regex/RegularExpression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;
    }
.end annotation


# static fields
.field public static final CARRIAGE_RETURN:I = 0xd

.field public static final DEBUG:Z = false

.field public static final EXTENDED_COMMENT:I = 0x10

.field public static final IGNORE_CASE:I = 0x2

.field public static final LINE_FEED:I = 0xa

.field public static final LINE_SEPARATOR:I = 0x2028

.field public static final MULTIPLE_LINES:I = 0x8

.field public static final PARAGRAPH_SEPARATOR:I = 0x2029

.field public static final PROHIBIT_FIXED_STRING_OPTIMIZATION:I = 0x100

.field public static final PROHIBIT_HEAD_CHARACTER_OPTIMIZATION:I = 0x80

.field public static final SINGLE_LINE:I = 0x4

.field public static final SPECIAL_COMMA:I = 0x400

.field public static final UNICODE_WORD_BOUNDARY:I = 0x40

.field public static final USE_UNICODE_CATEGORY:I = 0x20

.field private static final WT_IGNORE:I = 0x0

.field private static final WT_LETTER:I = 0x1

.field private static final WT_OTHER:I = 0x2

.field public static final XMLSCHEMA_MODE:I = 0x200


# instance fields
.field public transient context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

.field public transient firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

.field public transient fixedString:Ljava/lang/String;

.field public transient fixedStringOnly:Z

.field public transient fixedStringOptions:I

.field public transient fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

.field public hasBackReferences:Z

.field public transient minlength:I

.field public nofparen:I

.field public transient numberOfClosures:I

.field public transient operations:Lorg/apache/xmlbeans/impl/regex/Op;

.field public options:I

.field public regex:Ljava/lang/String;

.field public tokentree:Lorg/apache/xmlbeans/impl/regex/Token;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xmlbeans/impl/regex/Token;IZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    iput p3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    iput p5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    iput-boolean p4, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    return-void
.end method

.method private compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;
    .locals 9

    iget v0, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Unknown token type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    check-cast p1, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;

    iget v0, p1, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->refNumber:I

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->condition:Lorg/apache/xmlbeans/impl/regex/Token;

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v3, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v1

    :goto_0
    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->yes:Lorg/apache/xmlbeans/impl/regex/Token;

    invoke-direct {p0, v2, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v2

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->no:Lorg/apache/xmlbeans/impl/regex/Token;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    :goto_1
    invoke-static {p2, v0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/regex/Op;->createCondition(Lorg/apache/xmlbeans/impl/regex/Op;ILorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;

    move-result-object p2

    goto/16 :goto_11

    :pswitch_1
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, v3, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p3

    check-cast p1, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->getOptions()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->getOptionsMask()I

    move-result p1

    invoke-static {p2, p3, v0, p1}, Lorg/apache/xmlbeans/impl/regex/Op;->createModifier(Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;II)Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;

    move-result-object p2

    goto/16 :goto_11

    :pswitch_2
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/xmlbeans/impl/regex/Op;->createIndependent(Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_11

    :pswitch_3
    const/16 p3, 0x17

    goto :goto_2

    :pswitch_4
    const/16 p3, 0x16

    :goto_2
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p1

    goto :goto_4

    :pswitch_5
    const/16 p3, 0x15

    goto :goto_3

    :pswitch_6
    const/16 p3, 0x14

    :goto_3
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p1

    :goto_4
    invoke-static {p3, p2, p1}, Lorg/apache/xmlbeans/impl/regex/Op;->createLook(ILorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_11

    :pswitch_7
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getReferenceNumber()I

    move-result p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Op;->createBackReference(I)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p1

    goto/16 :goto_10

    :pswitch_8
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Op;->createDot()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p1

    goto/16 :goto_10

    :pswitch_9
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Op;->createString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/regex/Op$StringOp;

    move-result-object p1

    goto/16 :goto_10

    :pswitch_a
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getChar()I

    move-result p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Op;->createAnchor(I)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p1

    goto/16 :goto_10

    :pswitch_b
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getParenNumber()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    goto/16 :goto_11

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getParenNumber()I

    move-result v0

    if-eqz p3, :cond_3

    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/regex/Op;->createCapture(ILorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p2

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getParenNumber()I

    move-result p1

    neg-int p1, p1

    goto :goto_5

    :cond_3
    neg-int v0, v0

    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/regex/Op;->createCapture(ILorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p2

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getParenNumber()I

    move-result p1

    :goto_5
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/regex/Op;->createCapture(ILorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p2

    goto/16 :goto_11

    :pswitch_c
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Op;->createRange(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Op$RangeOp;

    move-result-object p1

    goto/16 :goto_10

    :pswitch_d
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getMin()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getMax()I

    move-result v4

    if-ltz v3, :cond_4

    if-ne v3, v4, :cond_4

    :goto_6
    if-ge v2, v3, :cond_d

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_4
    if-lez v3, :cond_5

    if-lez v4, :cond_5

    sub-int/2addr v4, v3

    :cond_5
    const/16 v5, 0x9

    if-lez v4, :cond_8

    move-object v7, p2

    move v6, v2

    :goto_7
    if-ge v6, v4, :cond_7

    iget v8, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    if-ne v8, v5, :cond_6

    move v8, v1

    goto :goto_8

    :cond_6
    move v8, v2

    :goto_8
    invoke-static {v8}, Lorg/apache/xmlbeans/impl/regex/Op;->createQuestion(Z)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object v8

    iput-object p2, v8, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    invoke-direct {p0, v0, v7, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;->setChild(Lorg/apache/xmlbeans/impl/regex/Op;)V

    add-int/lit8 v6, v6, 0x1

    move-object v7, v8

    goto :goto_7

    :cond_7
    move-object p2, v7

    goto :goto_b

    :cond_8
    iget p1, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    if-ne p1, v5, :cond_9

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Op;->createNonGreedyClosure()Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object p1

    goto :goto_a

    :cond_9
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->getMinLength()I

    move-result p1

    if-nez p1, :cond_a

    iget p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->numberOfClosures:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->numberOfClosures:I

    goto :goto_9

    :cond_a
    const/4 p1, -0x1

    :goto_9
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Op;->createClosure(I)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object p1

    :goto_a
    iput-object p2, p1, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    invoke-direct {p0, v0, p1, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;->setChild(Lorg/apache/xmlbeans/impl/regex/Op;)V

    move-object p2, p1

    :goto_b
    if-lez v3, :cond_d

    :goto_c
    if-ge v2, v3, :cond_d

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :pswitch_e
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Op;->createUnion(I)Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;

    move-result-object v0

    :goto_d
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->size()I

    move-result v1

    if-ge v2, v1, :cond_b

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;->addElement(Lorg/apache/xmlbeans/impl/regex/Op;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_b
    move-object p2, v0

    goto :goto_11

    :pswitch_f
    if-nez p3, :cond_c

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->size()I

    move-result p3

    sub-int/2addr p3, v1

    :goto_e
    if-ltz p3, :cond_d

    invoke-virtual {p1, p3}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, p2, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    add-int/lit8 p3, p3, -0x1

    goto :goto_e

    :cond_c
    :goto_f
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->size()I

    move-result p3

    if-ge v2, p3, :cond_d

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p3

    :try_start_0
    invoke-direct {p0, p3, p2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :pswitch_10
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getChar()I

    move-result p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Op;->createChar(I)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p1

    :goto_10
    iput-object p2, p1, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object p2, p1

    :cond_d
    :goto_11
    :pswitch_11
    return-object p2

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized compile(Lorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->numberOfClosures:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final getPreviousWordType(Ljava/lang/String;IIII)I
    .locals 1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Ljava/lang/String;IIII)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static final getPreviousWordType(Ljava/text/CharacterIterator;IIII)I
    .locals 1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Ljava/text/CharacterIterator;IIII)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static final getPreviousWordType([CIIII)I
    .locals 1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType([CIIII)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static final getWordType(Ljava/lang/String;IIII)I
    .locals 0

    if-lt p3, p1, :cond_1

    if-lt p3, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType0(CI)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method private static final getWordType(Ljava/text/CharacterIterator;IIII)I
    .locals 0

    if-lt p3, p1, :cond_1

    if-lt p3, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p0

    invoke-static {p0, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType0(CI)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method private static final getWordType([CIIII)I
    .locals 0

    if-lt p3, p1, :cond_1

    if-lt p3, p2, :cond_0

    goto :goto_0

    :cond_0
    aget-char p0, p0, p3

    invoke-static {p0, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType0(CI)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method private static final getWordType0(CI)I
    .locals 4

    const/16 v0, 0x40

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_3

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "IsWord"

    invoke-static {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isWordChar(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p1

    const/16 v0, 0xf

    const/4 v3, 0x0

    if-eq p1, v0, :cond_5

    const/16 p0, 0x10

    if-eq p1, p0, :cond_4

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    return v2

    :cond_4
    :pswitch_1
    return v3

    :cond_5
    packed-switch p0, :pswitch_data_1

    return v3

    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static final isEOLChar(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2029

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final isSet(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isWordChar(I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x5f

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x30

    const/4 v2, 0x0

    if-ge p0, v1, :cond_1

    return v2

    :cond_1
    const/16 v1, 0x7a

    if-le p0, v1, :cond_2

    return v2

    :cond_2
    const/16 v1, 0x39

    if-gt p0, v1, :cond_3

    return v0

    :cond_3
    const/16 v1, 0x41

    if-ge p0, v1, :cond_4

    return v2

    :cond_4
    const/16 v1, 0x5a

    if-gt p0, v1, :cond_5

    return v0

    :cond_5
    const/16 v1, 0x61

    if-ge p0, v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method private matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I
    .locals 10

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->charTarget:[C

    :goto_0
    const/4 v7, -0x1

    if-nez p2, :cond_1

    const/16 p2, 0x200

    invoke-static {p5, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, p1, :cond_0

    move p3, v7

    :cond_0
    return p3

    :cond_1
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-gt p3, v1, :cond_54

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-ge p3, v2, :cond_2

    goto/16 :goto_c

    :cond_2
    iget v2, p2, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    const/4 v8, 0x1

    if-eqz v2, :cond_4c

    const/4 v3, 0x2

    if-eq v2, v8, :cond_43

    const/16 v4, 0xf

    if-eq v2, v4, :cond_3f

    const/16 v4, 0x10

    const-string v5, "Internal Error: Reference number must be more than zero: "

    if-eq v2, v4, :cond_37

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Unknown operation type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p2, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;

    iget v1, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    if-lez v1, :cond_5

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    if-ge v1, v2, :cond_4

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget v2, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_1

    :cond_3
    move v8, v9

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v3, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->condition:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_3

    :goto_1
    if-eqz v8, :cond_6

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->yes:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_0

    :cond_6
    iget-object v1, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->no:Lorg/apache/xmlbeans/impl/regex/Op;

    if-eqz v1, :cond_7

    move-object p2, v1

    goto/16 :goto_0

    :cond_7
    :goto_2
    iget-object p2, p2, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    or-int/2addr v1, p5

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData2()I

    move-result v2

    not-int v2, v2

    and-int v6, v1, v2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p3

    if-gez p3, :cond_7

    return p3

    :pswitch_2
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p3

    if-gez p3, :cond_7

    return p3

    :pswitch_3
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_7

    return v7

    :pswitch_4
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-gez v1, :cond_7

    return v7

    :pswitch_5
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_7

    return v7

    :pswitch_6
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-gez v1, :cond_7

    return v7

    :goto_3
    :pswitch_7
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->size()I

    move-result v0

    if-ge v9, v0, :cond_9

    invoke-virtual {p2, v9}, Lorg/apache/xmlbeans/impl/regex/Op;->elementAt(I)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v0

    if-ltz v0, :cond_8

    return v0

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    return v7

    :pswitch_8
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_7

    return v1

    :pswitch_9
    iget-object v3, p2, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_a

    return v1

    :cond_a
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v8

    if-ltz v8, :cond_d

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->offsets:[I

    aget v2, v1, v8

    if-ltz v2, :cond_c

    if-eq v2, p3, :cond_b

    goto :goto_4

    :cond_b
    aput v7, v1, v8

    goto/16 :goto_2

    :cond_c
    :goto_4
    aput p3, v1, v8

    :cond_d
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v8, :cond_e

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->offsets:[I

    aput v7, v2, v8

    :cond_e
    if-ltz v1, :cond_7

    return v1

    :pswitch_b
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_10

    if-lez p4, :cond_f

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatches([CIILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_11

    return v7

    :cond_f
    sub-int/2addr p3, v2

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatches([CIILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    return v7

    :cond_10
    if-lez p4, :cond_12

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatchesIgnoreCase([CIILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_11

    return v7

    :cond_11
    add-int/2addr p3, v2

    goto/16 :goto_2

    :cond_12
    sub-int/2addr p3, v2

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatchesIgnoreCase([CIILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    return v7

    :pswitch_c
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    const/16 v2, 0x24

    const/16 v4, 0xa

    const/16 v5, 0xd

    const/16 v6, 0x8

    if-eq v1, v2, :cond_27

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_24

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_21

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1e

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x62

    if-eq v1, v2, :cond_18

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_17

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_d
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-nez v1, :cond_13

    goto :goto_5

    :cond_13
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType([CIIII)I

    move-result v1

    if-eqz v1, :cond_15

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v2, v3, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType([CIIII)I

    move-result v2

    if-ne v1, v2, :cond_14

    goto :goto_5

    :cond_14
    move v8, v9

    :cond_15
    :goto_5
    if-nez v8, :cond_7

    return v7

    :pswitch_e
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p3, v1, :cond_7

    return v7

    :pswitch_f
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p3, v1, :cond_7

    if-le p3, v1, :cond_16

    add-int/lit8 v1, p3, -0x1

    aget-char v1, v0, v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_16
    return v7

    :cond_17
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, v1, :cond_7

    return v7

    :cond_18
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-nez v1, :cond_19

    return v7

    :cond_19
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType([CIIII)I

    move-result v1

    if-nez v1, :cond_1a

    return v7

    :cond_1a
    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v2, v3, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType([CIIII)I

    move-result v2

    if-ne v1, v2, :cond_7

    return v7

    :cond_1b
    invoke-static {p5, v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p3, v1, :cond_7

    if-le p3, v1, :cond_1c

    add-int/lit8 v1, p3, -0x1

    aget-char v1, v0, v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1c
    return v7

    :cond_1d
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p3, v1, :cond_7

    return v7

    :cond_1e
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, v1, :cond_7

    add-int/lit8 v2, p3, 0x1

    if-ne v2, v1, :cond_1f

    aget-char v1, v0, p3

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1f
    add-int/lit8 v1, p3, 0x2

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne v1, v3, :cond_20

    aget-char v1, v0, p3

    if-ne v1, v5, :cond_20

    aget-char v1, v0, v2

    if-eq v1, v4, :cond_7

    :cond_20
    return v7

    :cond_21
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-eqz v1, :cond_23

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-ne p3, v1, :cond_22

    goto :goto_6

    :cond_22
    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType([CIIII)I

    move-result v1

    if-ne v1, v3, :cond_23

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType([CIIII)I

    move-result v1

    if-eq v1, v8, :cond_7

    :cond_23
    :goto_6
    return v7

    :cond_24
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-eqz v1, :cond_26

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne p3, v1, :cond_25

    goto :goto_7

    :cond_25
    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    invoke-static {v0, v2, v1, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType([CIIII)I

    move-result v1

    if-ne v1, v8, :cond_26

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType([CIIII)I

    move-result v1

    if-eq v1, v3, :cond_7

    :cond_26
    :goto_7
    return v7

    :cond_27
    invoke-static {p5, v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, v1, :cond_7

    if-ge p3, v1, :cond_28

    aget-char v1, v0, p3

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_28
    return v7

    :cond_29
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, v1, :cond_7

    add-int/lit8 v2, p3, 0x1

    if-ne v2, v1, :cond_2a

    aget-char v1, v0, p3

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_2a
    add-int/lit8 v1, p3, 0x2

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne v1, v3, :cond_2b

    aget-char v1, v0, p3

    if-ne v1, v5, :cond_2b

    aget-char v1, v0, v2

    if-eq v1, v4, :cond_7

    :cond_2b
    return v7

    :pswitch_10
    const/high16 v2, 0x10000

    if-lez p4, :cond_31

    if-lt p3, v1, :cond_2c

    return v7

    :cond_2c
    aget-char v1, v0, p3

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    add-int/lit8 v4, p3, 0x1

    iget v5, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v4, v5, :cond_2d

    aget-char p3, v0, v4

    invoke-static {v1, p3}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    move p3, v4

    :cond_2d
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v4

    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->getCaseInsensitiveToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v4

    if-nez v4, :cond_30

    if-lt v1, v2, :cond_2e

    return v7

    :cond_2e
    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_30

    return v7

    :cond_2f
    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_30

    return v7

    :cond_30
    :goto_8
    add-int/2addr p3, v8

    goto/16 :goto_2

    :cond_31
    add-int/lit8 p3, p3, -0x1

    if-ge p3, v1, :cond_36

    if-gez p3, :cond_32

    goto :goto_9

    :cond_32
    aget-char v1, v0, p3

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isLowSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_33

    add-int/lit8 v4, p3, -0x1

    if-ltz v4, :cond_33

    add-int/lit8 p3, p3, -0x1

    aget-char v4, v0, p3

    invoke-static {v4, v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    :cond_33
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v4

    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->getCaseInsensitiveToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v4

    if-nez v4, :cond_7

    if-lt v1, v2, :cond_34

    return v7

    :cond_34
    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_7

    return v7

    :cond_35
    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_36
    :goto_9
    return v7

    :cond_37
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    if-lez v1, :cond_3e

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    if-ge v1, v2, :cond_3e

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v2

    if-ltz v2, :cond_3d

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v2

    if-gez v2, :cond_38

    goto :goto_a

    :cond_38
    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v2

    iget-object v4, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_3a

    if-lez p4, :cond_39

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatches([CIIII)Z

    move-result v2

    if-nez v2, :cond_3b

    return v7

    :cond_39
    sub-int/2addr p3, v1

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatches([CIIII)Z

    move-result v1

    if-nez v1, :cond_7

    return v7

    :cond_3a
    if-lez p4, :cond_3c

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatchesIgnoreCase([CIIII)Z

    move-result v2

    if-nez v2, :cond_3b

    return v7

    :cond_3b
    add-int/2addr p3, v1

    goto/16 :goto_2

    :cond_3c
    sub-int/2addr p3, v1

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatchesIgnoreCase([CIIII)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_3d
    :goto_a
    return v7

    :cond_3e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v7

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz v1, :cond_41

    if-lez v7, :cond_41

    invoke-virtual {v1, v7}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v0

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v1, v7, p3}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    iget-object v3, p2, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p2

    if-gez p2, :cond_40

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, v7, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    :cond_40
    return p2

    :cond_41
    if-eqz v1, :cond_7

    if-gez v7, :cond_7

    neg-int v0, v7

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v7

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v1, v0, p3}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    iget-object v3, p2, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p2, :cond_42

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, v0, v7}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :cond_42
    return p2

    :cond_43
    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    if-lez p4, :cond_45

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p3, v2, :cond_44

    aget-char v2, v0, p3

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchIgnoreCase(II)Z

    move-result v1

    if-nez v1, :cond_48

    :cond_44
    return v7

    :cond_45
    add-int/lit8 p3, p3, -0x1

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p3, v2, :cond_46

    if-ltz p3, :cond_46

    aget-char v2, v0, p3

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchIgnoreCase(II)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_46
    return v7

    :cond_47
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    if-lez p4, :cond_4a

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p3, v2, :cond_49

    aget-char v2, v0, p3

    if-eq v1, v2, :cond_48

    goto :goto_b

    :cond_48
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_2

    :cond_49
    :goto_b
    return v7

    :cond_4a
    add-int/lit8 p3, p3, -0x1

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p3, v2, :cond_4b

    if-ltz p3, :cond_4b

    aget-char v2, v0, p3

    if-eq v1, v2, :cond_7

    :cond_4b
    return v7

    :cond_4c
    const/4 v2, 0x4

    if-lez p4, :cond_50

    if-lt p3, v1, :cond_4d

    return v7

    :cond_4d
    aget-char v1, v0, p3

    invoke-static {p5, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_30

    add-int/lit8 v1, p3, 0x1

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v1, v2, :cond_30

    move p3, v1

    goto/16 :goto_8

    :cond_4e
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    add-int/lit8 v2, p3, 0x1

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v2, v3, :cond_4f

    aget-char p3, v0, v2

    invoke-static {v1, p3}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    move p3, v2

    :cond_4f
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-eqz v1, :cond_30

    return v7

    :cond_50
    add-int/lit8 p3, p3, -0x1

    if-ge p3, v1, :cond_54

    if-gez p3, :cond_51

    goto :goto_c

    :cond_51
    aget-char v1, v0, p3

    invoke-static {p5, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isLowSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, p3, -0x1

    if-ltz v1, :cond_7

    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    :cond_52
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isLowSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_53

    add-int/lit8 v2, p3, -0x1

    if-ltz v2, :cond_53

    add-int/lit8 p3, p3, -0x1

    aget-char v2, v0, p3

    invoke-static {v2, v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    :cond_53
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_54
    :goto_c
    return v7

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_10
        :pswitch_10
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I
    .locals 10

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->ciTarget:Ljava/text/CharacterIterator;

    :goto_0
    const/4 v7, -0x1

    if-nez p2, :cond_1

    const/16 p2, 0x200

    invoke-static {p5, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, p1, :cond_0

    move p3, v7

    :cond_0
    return p3

    :cond_1
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-gt p3, v1, :cond_54

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-ge p3, v2, :cond_2

    goto/16 :goto_c

    :cond_2
    iget v2, p2, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    const/4 v8, 0x1

    if-eqz v2, :cond_4c

    const/4 v3, 0x2

    if-eq v2, v8, :cond_43

    const/16 v4, 0xf

    if-eq v2, v4, :cond_3f

    const/16 v4, 0x10

    const-string v5, "Internal Error: Reference number must be more than zero: "

    if-eq v2, v4, :cond_37

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Unknown operation type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p2, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;

    iget v1, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    if-lez v1, :cond_5

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    if-ge v1, v2, :cond_4

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget v2, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_1

    :cond_3
    move v8, v9

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v3, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->condition:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_3

    :goto_1
    if-eqz v8, :cond_6

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->yes:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_0

    :cond_6
    iget-object v1, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->no:Lorg/apache/xmlbeans/impl/regex/Op;

    if-eqz v1, :cond_7

    move-object p2, v1

    goto/16 :goto_0

    :cond_7
    :goto_2
    iget-object p2, p2, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    or-int/2addr v1, p5

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData2()I

    move-result v2

    not-int v2, v2

    and-int v6, v1, v2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p3

    if-gez p3, :cond_7

    return p3

    :pswitch_2
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p3

    if-gez p3, :cond_7

    return p3

    :pswitch_3
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_7

    return v7

    :pswitch_4
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-gez v1, :cond_7

    return v7

    :pswitch_5
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_7

    return v7

    :pswitch_6
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-gez v1, :cond_7

    return v7

    :goto_3
    :pswitch_7
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->size()I

    move-result v0

    if-ge v9, v0, :cond_9

    invoke-virtual {p2, v9}, Lorg/apache/xmlbeans/impl/regex/Op;->elementAt(I)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v0

    if-ltz v0, :cond_8

    return v0

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    return v7

    :pswitch_8
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_7

    return v1

    :pswitch_9
    iget-object v3, p2, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_a

    return v1

    :cond_a
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v8

    if-ltz v8, :cond_d

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->offsets:[I

    aget v2, v1, v8

    if-ltz v2, :cond_c

    if-eq v2, p3, :cond_b

    goto :goto_4

    :cond_b
    aput v7, v1, v8

    goto/16 :goto_2

    :cond_c
    :goto_4
    aput p3, v1, v8

    :cond_d
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v8, :cond_e

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->offsets:[I

    aput v7, v2, v8

    :cond_e
    if-ltz v1, :cond_7

    return v1

    :pswitch_b
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_10

    if-lez p4, :cond_f

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatches(Ljava/text/CharacterIterator;IILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_11

    return v7

    :cond_f
    sub-int/2addr p3, v2

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatches(Ljava/text/CharacterIterator;IILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    return v7

    :cond_10
    if-lez p4, :cond_12

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatchesIgnoreCase(Ljava/text/CharacterIterator;IILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_11

    return v7

    :cond_11
    add-int/2addr p3, v2

    goto/16 :goto_2

    :cond_12
    sub-int/2addr p3, v2

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatchesIgnoreCase(Ljava/text/CharacterIterator;IILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    return v7

    :pswitch_c
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    const/16 v2, 0x24

    const/16 v4, 0xa

    const/16 v5, 0xd

    const/16 v6, 0x8

    if-eq v1, v2, :cond_27

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_24

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_21

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1e

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x62

    if-eq v1, v2, :cond_18

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_17

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_d
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-nez v1, :cond_13

    goto :goto_5

    :cond_13
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Ljava/text/CharacterIterator;IIII)I

    move-result v1

    if-eqz v1, :cond_15

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v2, v3, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType(Ljava/text/CharacterIterator;IIII)I

    move-result v2

    if-ne v1, v2, :cond_14

    goto :goto_5

    :cond_14
    move v8, v9

    :cond_15
    :goto_5
    if-nez v8, :cond_7

    return v7

    :pswitch_e
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p3, v1, :cond_7

    return v7

    :pswitch_f
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p3, v1, :cond_7

    if-le p3, v1, :cond_16

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_16
    return v7

    :cond_17
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, v1, :cond_7

    return v7

    :cond_18
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-nez v1, :cond_19

    return v7

    :cond_19
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Ljava/text/CharacterIterator;IIII)I

    move-result v1

    if-nez v1, :cond_1a

    return v7

    :cond_1a
    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v2, v3, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType(Ljava/text/CharacterIterator;IIII)I

    move-result v2

    if-ne v1, v2, :cond_7

    return v7

    :cond_1b
    invoke-static {p5, v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p3, v1, :cond_7

    if-le p3, v1, :cond_1c

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1c
    return v7

    :cond_1d
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p3, v1, :cond_7

    return v7

    :cond_1e
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, v1, :cond_7

    add-int/lit8 v2, p3, 0x1

    if-ne v2, v1, :cond_1f

    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1f
    add-int/lit8 v1, p3, 0x2

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne v1, v3, :cond_20

    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    if-ne v1, v5, :cond_20

    invoke-interface {v0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    if-eq v1, v4, :cond_7

    :cond_20
    return v7

    :cond_21
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-eqz v1, :cond_23

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-ne p3, v1, :cond_22

    goto :goto_6

    :cond_22
    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Ljava/text/CharacterIterator;IIII)I

    move-result v1

    if-ne v1, v3, :cond_23

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType(Ljava/text/CharacterIterator;IIII)I

    move-result v1

    if-eq v1, v8, :cond_7

    :cond_23
    :goto_6
    return v7

    :cond_24
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-eqz v1, :cond_26

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne p3, v1, :cond_25

    goto :goto_7

    :cond_25
    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    invoke-static {v0, v2, v1, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Ljava/text/CharacterIterator;IIII)I

    move-result v1

    if-ne v1, v8, :cond_26

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType(Ljava/text/CharacterIterator;IIII)I

    move-result v1

    if-eq v1, v3, :cond_7

    :cond_26
    :goto_7
    return v7

    :cond_27
    invoke-static {p5, v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, v1, :cond_7

    if-ge p3, v1, :cond_28

    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_28
    return v7

    :cond_29
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, v1, :cond_7

    add-int/lit8 v2, p3, 0x1

    if-ne v2, v1, :cond_2a

    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_2a
    add-int/lit8 v1, p3, 0x2

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne v1, v3, :cond_2b

    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    if-ne v1, v5, :cond_2b

    invoke-interface {v0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    if-eq v1, v4, :cond_7

    :cond_2b
    return v7

    :pswitch_10
    const/high16 v2, 0x10000

    if-lez p4, :cond_31

    if-lt p3, v1, :cond_2c

    return v7

    :cond_2c
    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    add-int/lit8 v4, p3, 0x1

    iget v5, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v4, v5, :cond_2d

    invoke-interface {v0, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p3

    invoke-static {v1, p3}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    move p3, v4

    :cond_2d
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v4

    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->getCaseInsensitiveToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v4

    if-nez v4, :cond_30

    if-lt v1, v2, :cond_2e

    return v7

    :cond_2e
    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_30

    return v7

    :cond_2f
    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_30

    return v7

    :cond_30
    :goto_8
    add-int/2addr p3, v8

    goto/16 :goto_2

    :cond_31
    add-int/lit8 p3, p3, -0x1

    if-ge p3, v1, :cond_36

    if-gez p3, :cond_32

    goto :goto_9

    :cond_32
    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isLowSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_33

    add-int/lit8 v4, p3, -0x1

    if-ltz v4, :cond_33

    add-int/lit8 p3, p3, -0x1

    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    invoke-static {v4, v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    :cond_33
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v4

    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->getCaseInsensitiveToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v4

    if-nez v4, :cond_7

    if-lt v1, v2, :cond_34

    return v7

    :cond_34
    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_7

    return v7

    :cond_35
    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_36
    :goto_9
    return v7

    :cond_37
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    if-lez v1, :cond_3e

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    if-ge v1, v2, :cond_3e

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v2

    if-ltz v2, :cond_3d

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v2

    if-gez v2, :cond_38

    goto :goto_a

    :cond_38
    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v2

    iget-object v4, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_3a

    if-lez p4, :cond_39

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatches(Ljava/text/CharacterIterator;IIII)Z

    move-result v2

    if-nez v2, :cond_3b

    return v7

    :cond_39
    sub-int/2addr p3, v1

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatches(Ljava/text/CharacterIterator;IIII)Z

    move-result v1

    if-nez v1, :cond_7

    return v7

    :cond_3a
    if-lez p4, :cond_3c

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatchesIgnoreCase(Ljava/text/CharacterIterator;IIII)Z

    move-result v2

    if-nez v2, :cond_3b

    return v7

    :cond_3b
    add-int/2addr p3, v1

    goto/16 :goto_2

    :cond_3c
    sub-int/2addr p3, v1

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatchesIgnoreCase(Ljava/text/CharacterIterator;IIII)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_3d
    :goto_a
    return v7

    :cond_3e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v7

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz v1, :cond_41

    if-lez v7, :cond_41

    invoke-virtual {v1, v7}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v0

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v1, v7, p3}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    iget-object v3, p2, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p2

    if-gez p2, :cond_40

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, v7, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    :cond_40
    return p2

    :cond_41
    if-eqz v1, :cond_7

    if-gez v7, :cond_7

    neg-int v0, v7

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v7

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v1, v0, p3}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    iget-object v3, p2, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p2, :cond_42

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, v0, v7}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :cond_42
    return p2

    :cond_43
    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    if-lez p4, :cond_45

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p3, v2, :cond_44

    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchIgnoreCase(II)Z

    move-result v1

    if-nez v1, :cond_48

    :cond_44
    return v7

    :cond_45
    add-int/lit8 p3, p3, -0x1

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p3, v2, :cond_46

    if-ltz p3, :cond_46

    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchIgnoreCase(II)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_46
    return v7

    :cond_47
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    if-lez p4, :cond_4a

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p3, v2, :cond_49

    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    if-eq v1, v2, :cond_48

    goto :goto_b

    :cond_48
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_2

    :cond_49
    :goto_b
    return v7

    :cond_4a
    add-int/lit8 p3, p3, -0x1

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p3, v2, :cond_4b

    if-ltz p3, :cond_4b

    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    if-eq v1, v2, :cond_7

    :cond_4b
    return v7

    :cond_4c
    const/4 v2, 0x4

    if-lez p4, :cond_50

    if-lt p3, v1, :cond_4d

    return v7

    :cond_4d
    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    invoke-static {p5, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_30

    add-int/lit8 v1, p3, 0x1

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v1, v2, :cond_30

    move p3, v1

    goto/16 :goto_8

    :cond_4e
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    add-int/lit8 v2, p3, 0x1

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v2, v3, :cond_4f

    invoke-interface {v0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p3

    invoke-static {v1, p3}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    move p3, v2

    :cond_4f
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-eqz v1, :cond_30

    return v7

    :cond_50
    add-int/lit8 p3, p3, -0x1

    if-ge p3, v1, :cond_54

    if-gez p3, :cond_51

    goto :goto_c

    :cond_51
    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    invoke-static {p5, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isLowSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, p3, -0x1

    if-ltz v1, :cond_7

    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    :cond_52
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isLowSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_53

    add-int/lit8 v2, p3, -0x1

    if-ltz v2, :cond_53

    add-int/lit8 p3, p3, -0x1

    invoke-interface {v0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    invoke-static {v2, v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    :cond_53
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_54
    :goto_c
    return v7

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_10
        :pswitch_10
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private static final matchIgnoreCase(II)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const v2, 0xffff

    if-gt p0, v2, :cond_4

    if-le p1, v2, :cond_1

    goto :goto_1

    :cond_1
    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I
    .locals 10

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->strTarget:Ljava/lang/String;

    :goto_0
    const/4 v7, -0x1

    if-nez p2, :cond_1

    const/16 p2, 0x200

    invoke-static {p5, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, p1, :cond_0

    move p3, v7

    :cond_0
    return p3

    :cond_1
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-gt p3, v1, :cond_54

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-ge p3, v2, :cond_2

    goto/16 :goto_c

    :cond_2
    iget v2, p2, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    const/4 v8, 0x1

    if-eqz v2, :cond_4c

    const/4 v3, 0x2

    if-eq v2, v8, :cond_43

    const/16 v4, 0xf

    if-eq v2, v4, :cond_3f

    const/16 v4, 0x10

    const-string v5, "Internal Error: Reference number must be more than zero: "

    if-eq v2, v4, :cond_37

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Unknown operation type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p2, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;

    iget v1, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    if-lez v1, :cond_5

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    if-ge v1, v2, :cond_4

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget v2, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_1

    :cond_3
    move v8, v9

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v3, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->condition:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_3

    :goto_1
    if-eqz v8, :cond_6

    iget-object p2, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->yes:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_0

    :cond_6
    iget-object v1, p2, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->no:Lorg/apache/xmlbeans/impl/regex/Op;

    if-eqz v1, :cond_7

    move-object p2, v1

    goto/16 :goto_0

    :cond_7
    :goto_2
    iget-object p2, p2, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    or-int/2addr v1, p5

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData2()I

    move-result v2

    not-int v2, v2

    and-int v6, v1, v2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p3

    if-gez p3, :cond_7

    return p3

    :pswitch_2
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p3

    if-gez p3, :cond_7

    return p3

    :pswitch_3
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_7

    return v7

    :pswitch_4
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-gez v1, :cond_7

    return v7

    :pswitch_5
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_7

    return v7

    :pswitch_6
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-gez v1, :cond_7

    return v7

    :goto_3
    :pswitch_7
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->size()I

    move-result v0

    if-ge v9, v0, :cond_9

    invoke-virtual {p2, v9}, Lorg/apache/xmlbeans/impl/regex/Op;->elementAt(I)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v0

    if-ltz v0, :cond_8

    return v0

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    return v7

    :pswitch_8
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_7

    return v1

    :pswitch_9
    iget-object v3, p2, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_a

    return v1

    :cond_a
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v8

    if-ltz v8, :cond_d

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->offsets:[I

    aget v2, v1, v8

    if-ltz v2, :cond_c

    if-eq v2, p3, :cond_b

    goto :goto_4

    :cond_b
    aput v7, v1, v8

    goto/16 :goto_2

    :cond_c
    :goto_4
    aput p3, v1, v8

    :cond_d
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v8, :cond_e

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->offsets:[I

    aput v7, v2, v8

    :cond_e
    if-ltz v1, :cond_7

    return v1

    :pswitch_b
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_10

    if-lez p4, :cond_f

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatches(Ljava/lang/String;IILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_11

    return v7

    :cond_f
    sub-int/2addr p3, v2

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatches(Ljava/lang/String;IILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    return v7

    :cond_10
    if-lez p4, :cond_12

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatchesIgnoreCase(Ljava/lang/String;IILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_11

    return v7

    :cond_11
    add-int/2addr p3, v2

    goto/16 :goto_2

    :cond_12
    sub-int/2addr p3, v2

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatchesIgnoreCase(Ljava/lang/String;IILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    return v7

    :pswitch_c
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    const/16 v2, 0x24

    const/16 v4, 0xa

    const/16 v5, 0xd

    const/16 v6, 0x8

    if-eq v1, v2, :cond_27

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_24

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_21

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1e

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x62

    if-eq v1, v2, :cond_18

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_17

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_d
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-nez v1, :cond_13

    goto :goto_5

    :cond_13
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Ljava/lang/String;IIII)I

    move-result v1

    if-eqz v1, :cond_15

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v2, v3, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType(Ljava/lang/String;IIII)I

    move-result v2

    if-ne v1, v2, :cond_14

    goto :goto_5

    :cond_14
    move v8, v9

    :cond_15
    :goto_5
    if-nez v8, :cond_7

    return v7

    :pswitch_e
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p3, v1, :cond_7

    return v7

    :pswitch_f
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p3, v1, :cond_7

    if-le p3, v1, :cond_16

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_16
    return v7

    :cond_17
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, v1, :cond_7

    return v7

    :cond_18
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-nez v1, :cond_19

    return v7

    :cond_19
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Ljava/lang/String;IIII)I

    move-result v1

    if-nez v1, :cond_1a

    return v7

    :cond_1a
    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v2, v3, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType(Ljava/lang/String;IIII)I

    move-result v2

    if-ne v1, v2, :cond_7

    return v7

    :cond_1b
    invoke-static {p5, v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p3, v1, :cond_7

    if-le p3, v1, :cond_1c

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1c
    return v7

    :cond_1d
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p3, v1, :cond_7

    return v7

    :cond_1e
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, v1, :cond_7

    add-int/lit8 v2, p3, 0x1

    if-ne v2, v1, :cond_1f

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1f
    add-int/lit8 v1, p3, 0x2

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne v1, v3, :cond_20

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_20

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_7

    :cond_20
    return v7

    :cond_21
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-eqz v1, :cond_23

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-ne p3, v1, :cond_22

    goto :goto_6

    :cond_22
    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Ljava/lang/String;IIII)I

    move-result v1

    if-ne v1, v3, :cond_23

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType(Ljava/lang/String;IIII)I

    move-result v1

    if-eq v1, v8, :cond_7

    :cond_23
    :goto_6
    return v7

    :cond_24
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-eqz v1, :cond_26

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne p3, v1, :cond_25

    goto :goto_7

    :cond_25
    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    invoke-static {v0, v2, v1, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Ljava/lang/String;IIII)I

    move-result v1

    if-ne v1, v8, :cond_26

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, v1, v2, p3, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType(Ljava/lang/String;IIII)I

    move-result v1

    if-eq v1, v3, :cond_7

    :cond_26
    :goto_7
    return v7

    :cond_27
    invoke-static {p5, v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, v1, :cond_7

    if-ge p3, v1, :cond_28

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_28
    return v7

    :cond_29
    iget v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p3, v1, :cond_7

    add-int/lit8 v2, p3, 0x1

    if-ne v2, v1, :cond_2a

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_2a
    add-int/lit8 v1, p3, 0x2

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne v1, v3, :cond_2b

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2b

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_7

    :cond_2b
    return v7

    :pswitch_10
    const/high16 v2, 0x10000

    if-lez p4, :cond_31

    if-lt p3, v1, :cond_2c

    return v7

    :cond_2c
    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    add-int/lit8 v4, p3, 0x1

    iget v5, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v4, v5, :cond_2d

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-static {v1, p3}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    move p3, v4

    :cond_2d
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v4

    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->getCaseInsensitiveToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v4

    if-nez v4, :cond_30

    if-lt v1, v2, :cond_2e

    return v7

    :cond_2e
    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_30

    return v7

    :cond_2f
    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_30

    return v7

    :cond_30
    :goto_8
    add-int/2addr p3, v8

    goto/16 :goto_2

    :cond_31
    add-int/lit8 p3, p3, -0x1

    if-ge p3, v1, :cond_36

    if-gez p3, :cond_32

    goto :goto_9

    :cond_32
    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isLowSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_33

    add-int/lit8 v4, p3, -0x1

    if-ltz v4, :cond_33

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    :cond_33
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v4

    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->getCaseInsensitiveToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v4

    if-nez v4, :cond_7

    if-lt v1, v2, :cond_34

    return v7

    :cond_34
    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_7

    return v7

    :cond_35
    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_36
    :goto_9
    return v7

    :cond_37
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    if-lez v1, :cond_3e

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    if-ge v1, v2, :cond_3e

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v2

    if-ltz v2, :cond_3d

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v2

    if-gez v2, :cond_38

    goto :goto_a

    :cond_38
    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v2

    iget-object v4, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v4, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_3a

    if-lez p4, :cond_39

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatches(Ljava/lang/String;IIII)Z

    move-result v2

    if-nez v2, :cond_3b

    return v7

    :cond_39
    sub-int/2addr p3, v1

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatches(Ljava/lang/String;IIII)Z

    move-result v1

    if-nez v1, :cond_7

    return v7

    :cond_3a
    if-lez p4, :cond_3c

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatchesIgnoreCase(Ljava/lang/String;IIII)Z

    move-result v2

    if-nez v2, :cond_3b

    return v7

    :cond_3b
    add-int/2addr p3, v1

    goto/16 :goto_2

    :cond_3c
    sub-int/2addr p3, v1

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {v0, p3, v3, v2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regionMatchesIgnoreCase(Ljava/lang/String;IIII)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_3d
    :goto_a
    return v7

    :cond_3e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v7

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz v1, :cond_41

    if-lez v7, :cond_41

    invoke-virtual {v1, v7}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v0

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v1, v7, p3}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    iget-object v3, p2, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p2

    if-gez p2, :cond_40

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, v7, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    :cond_40
    return p2

    :cond_41
    if-eqz v1, :cond_7

    if-gez v7, :cond_7

    neg-int v0, v7

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v7

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v1, v0, p3}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    iget-object v3, p2, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez p2, :cond_42

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, v0, v7}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :cond_42
    return p2

    :cond_43
    invoke-static {p5, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    if-lez p4, :cond_45

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p3, v2, :cond_44

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchIgnoreCase(II)Z

    move-result v1

    if-nez v1, :cond_48

    :cond_44
    return v7

    :cond_45
    add-int/lit8 p3, p3, -0x1

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p3, v2, :cond_46

    if-ltz p3, :cond_46

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchIgnoreCase(II)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_46
    return v7

    :cond_47
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    if-lez p4, :cond_4a

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p3, v2, :cond_49

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_48

    goto :goto_b

    :cond_48
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_2

    :cond_49
    :goto_b
    return v7

    :cond_4a
    add-int/lit8 p3, p3, -0x1

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p3, v2, :cond_4b

    if-ltz p3, :cond_4b

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_7

    :cond_4b
    return v7

    :cond_4c
    const/4 v2, 0x4

    if-lez p4, :cond_50

    if-lt p3, v1, :cond_4d

    return v7

    :cond_4d
    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p5, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_30

    add-int/lit8 v1, p3, 0x1

    iget v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v1, v2, :cond_30

    move p3, v1

    goto/16 :goto_8

    :cond_4e
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_4f

    add-int/lit8 v2, p3, 0x1

    iget v3, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v2, v3, :cond_4f

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-static {v1, p3}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    move p3, v2

    :cond_4f
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-eqz v1, :cond_30

    return v7

    :cond_50
    add-int/lit8 p3, p3, -0x1

    if-ge p3, v1, :cond_54

    if-gez p3, :cond_51

    goto :goto_c

    :cond_51
    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p5, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isLowSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, p3, -0x1

    if-ltz v1, :cond_7

    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    :cond_52
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isLowSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_53

    add-int/lit8 v2, p3, -0x1

    if-ltz v2, :cond_53

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    :cond_53
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_54
    :goto_c
    return v7

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_10
        :pswitch_10
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private static final regionMatches(Ljava/lang/String;IIII)Z
    .locals 0

    sub-int/2addr p2, p1

    if-ge p2, p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p0, p3, p4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static final regionMatches(Ljava/lang/String;IILjava/lang/String;I)Z
    .locals 1

    sub-int/2addr p2, p1

    const/4 v0, 0x0

    if-ge p2, p4, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p3, v0, p4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static final regionMatches(Ljava/text/CharacterIterator;IIII)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p2, p1

    if-ge p2, p4, :cond_1

    return v0

    :cond_1
    :goto_0
    add-int/lit8 p2, p4, -0x1

    if-lez p4, :cond_3

    add-int/lit8 p4, p1, 0x1

    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p1

    add-int/lit8 v1, p3, 0x1

    invoke-interface {p0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p3

    if-eq p1, p3, :cond_2

    return v0

    :cond_2
    move p1, p4

    move p3, v1

    move p4, p2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static final regionMatches(Ljava/text/CharacterIterator;IILjava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p2, p1

    if-ge p2, p4, :cond_1

    return v0

    :cond_1
    move p2, v0

    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_3

    add-int/lit8 p4, p1, 0x1

    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p1, p2, :cond_2

    return v0

    :cond_2
    move p1, p4

    move p4, v1

    move p2, v2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static final regionMatches([CIIII)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p2, p1

    if-ge p2, p4, :cond_1

    return v0

    :cond_1
    :goto_0
    add-int/lit8 p2, p4, -0x1

    if-lez p4, :cond_3

    add-int/lit8 p4, p1, 0x1

    aget-char p1, p0, p1

    add-int/lit8 v1, p3, 0x1

    aget-char p3, p0, p3

    if-eq p1, p3, :cond_2

    return v0

    :cond_2
    move p1, p4

    move p3, v1

    move p4, p2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static final regionMatches([CIILjava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p2, p1

    if-ge p2, p4, :cond_1

    return v0

    :cond_1
    move p2, v0

    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_3

    add-int/lit8 p4, p1, 0x1

    aget-char p1, p0, p1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p1, p2, :cond_2

    return v0

    :cond_2
    move p1, p4

    move p4, v1

    move p2, v2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static final regionMatchesIgnoreCase(Ljava/lang/String;IIII)Z
    .locals 6

    sub-int/2addr p2, p1

    if-ge p2, p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p0

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static final regionMatchesIgnoreCase(Ljava/lang/String;IILjava/lang/String;I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static final regionMatchesIgnoreCase(Ljava/text/CharacterIterator;IIII)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p2, p1

    if-ge p2, p4, :cond_1

    return v0

    :cond_1
    :goto_0
    add-int/lit8 p2, p4, -0x1

    if-lez p4, :cond_5

    add-int/lit8 p4, p1, 0x1

    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p1

    add-int/lit8 v1, p3, 0x1

    invoke-interface {p0, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p3

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p3

    if-ne p1, p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {p3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p3

    if-eq p1, p3, :cond_4

    return v0

    :cond_4
    :goto_1
    move p1, p4

    move p3, v1

    move p4, p2

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private static final regionMatchesIgnoreCase(Ljava/text/CharacterIterator;IILjava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p2, p1

    if-ge p2, p4, :cond_1

    return v0

    :cond_1
    move p2, v0

    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_5

    add-int/lit8 p4, p1, 0x1

    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-eq p1, p2, :cond_4

    return v0

    :cond_4
    :goto_1
    move p1, p4

    move p4, v1

    move p2, v2

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private static final regionMatchesIgnoreCase([CIIII)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p2, p1

    if-ge p2, p4, :cond_1

    return v0

    :cond_1
    :goto_0
    add-int/lit8 p2, p4, -0x1

    if-lez p4, :cond_5

    add-int/lit8 p4, p1, 0x1

    aget-char p1, p0, p1

    add-int/lit8 v1, p3, 0x1

    aget-char p3, p0, p3

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p3

    if-ne p1, p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {p3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p3

    if-eq p1, p3, :cond_4

    return v0

    :cond_4
    :goto_1
    move p1, p4

    move p3, v1

    move p4, p2

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private static final regionMatchesIgnoreCase([CIILjava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p2, p1

    if-ge p2, p4, :cond_1

    return v0

    :cond_1
    move p2, v0

    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_5

    add-int/lit8 p4, p1, 0x1

    aget-char p1, p0, p1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-eq p1, p2, :cond_4

    return v0

    :cond_4
    :goto_1
    move p1, p4

    move p4, v1

    move p2, v2

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private setPattern(Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/16 p1, 0x200

    invoke-static {p2, p1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/regex/RegexParser;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/regex/RegexParser;-><init>()V

    :goto_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-virtual {p1, p2, v0}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parse(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    iget p2, p1, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parennumber:I

    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    iget-boolean p1, p1, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hasBackReferences:Z

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    iget p1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getNumberOfGroups()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    return v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getOptions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/apache/xmlbeans/impl/regex/Match;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/lang/String;IILorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/String;II)Z
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/lang/String;IILorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/String;IILorg/apache/xmlbeans/impl/regex/Match;)Z
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->prepare()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    iget-boolean v2, v1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    if-eqz v2, :cond_2

    new-instance v1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;-><init>()V

    :cond_2
    move-object v7, v1

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->numberOfClosures:I

    invoke-virtual {v7, p1, p2, p3, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->reset(Ljava/lang/String;III)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p4, :cond_3

    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setNumberOfGroups(I)V

    invoke-virtual {p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    if-eqz p2, :cond_4

    new-instance p4, Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-direct {p4}, Lorg/apache/xmlbeans/impl/regex/Match;-><init>()V

    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setNumberOfGroups(I)V

    :cond_4
    :goto_0
    iput-object p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/16 p3, 0x200

    invoke-static {p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_7

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    iget v4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p1

    iget p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne p1, p2, :cond_6

    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p2, :cond_5

    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    invoke-virtual {p2, p4, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p2, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :cond_5
    iput-boolean p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return p3

    :cond_6
    return p4

    :cond_7
    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/regex/BMPattern;->matches(Ljava/lang/String;II)I

    move-result p1

    if-ltz p1, :cond_9

    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p2, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :cond_8
    iput-boolean p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return p3

    :cond_9
    iput-boolean p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return p4

    :cond_a
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/regex/BMPattern;->matches(Ljava/lang/String;II)I

    move-result p2

    if-gez p2, :cond_b

    iput-boolean p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return p4

    :cond_b
    iget p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->minlength:I

    sub-int/2addr p2, v0

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    if-eqz v1, :cond_10

    iget v2, v1, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_10

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v1

    iget v1, v1, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    if-nez v1, :cond_10

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_c

    iget p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p2

    goto/16 :goto_b

    :cond_c
    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v2, p3

    move v10, v1

    move v1, v0

    move v0, v10

    :goto_1
    if-gt v0, p2, :cond_f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v3

    if-eqz v3, :cond_d

    move v2, p3

    goto :goto_2

    :cond_d
    if-eqz v2, :cond_e

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_e

    goto :goto_3

    :cond_e
    move v2, p4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    :goto_3
    move p2, v1

    move p1, v0

    goto/16 :goto_b

    :cond_10
    iget-object v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    if-eqz v8, :cond_19

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->getCaseInsensitiveToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v8

    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v9, v1

    :goto_4
    if-gt v9, p2, :cond_18

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_11

    add-int/lit8 v2, v9, 0x1

    iget v3, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v2, v3, :cond_11

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_5

    :cond_11
    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_12

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_5

    :cond_12
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, v9

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v0

    if-ltz v0, :cond_13

    goto :goto_8

    :cond_13
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_14
    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v9, v1

    :goto_6
    if-gt v9, p2, :cond_18

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v2, v9, 0x1

    iget v3, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v2, v3, :cond_15

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    :cond_15
    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_7

    :cond_16
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, v9

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v0

    if-ltz v0, :cond_17

    goto :goto_8

    :cond_17
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_18
    :goto_8
    move p2, v0

    move p1, v9

    goto :goto_b

    :cond_19
    iget p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    :goto_9
    if-gt p1, p2, :cond_1b

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchString(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v0

    if-ltz v0, :cond_1a

    goto :goto_a

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_1b
    :goto_a
    move p2, v0

    :goto_b
    if-ltz p2, :cond_1d

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    iget-object p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, p4, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :cond_1c
    iput-boolean p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return p3

    :cond_1d
    iput-boolean p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return p4

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public matches(Ljava/lang/String;Lorg/apache/xmlbeans/impl/regex/Match;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/lang/String;IILorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/text/CharacterIterator;)Z
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/text/CharacterIterator;Lorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/text/CharacterIterator;Lorg/apache/xmlbeans/impl/regex/Match;)Z
    .locals 13

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->prepare()V

    :cond_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    if-nez v2, :cond_1

    new-instance v2, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    invoke-direct {v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;-><init>()V

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    iget-boolean v4, v3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    if-eqz v4, :cond_2

    new-instance v3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    invoke-direct {v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;-><init>()V

    :cond_2
    move-object v9, v3

    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->numberOfClosures:I

    invoke-virtual {v9, p1, v0, v1, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->reset(Ljava/text/CharacterIterator;III)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->setNumberOfGroups(I)V

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setSource(Ljava/text/CharacterIterator;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    if-eqz v0, :cond_4

    new-instance p2, Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-direct {p2}, Lorg/apache/xmlbeans/impl/regex/Match;-><init>()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->setNumberOfGroups(I)V

    :cond_4
    :goto_0
    iput-object p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/16 v0, 0x200

    invoke-static {p2, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    iget v6, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v3, p0

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p1

    iget p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne p1, p2, :cond_6

    iget-object p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p2, :cond_5

    iget v2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    invoke-virtual {p2, v1, v2}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    iget-object p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p2, v1, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :cond_5
    iput-boolean v1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return v0

    :cond_6
    return v1

    :cond_7
    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v3, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v2, v3}, Lorg/apache/xmlbeans/impl/regex/BMPattern;->matches(Ljava/text/CharacterIterator;II)I

    move-result p1

    if-ltz p1, :cond_9

    iget-object p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p2, :cond_8

    invoke-virtual {p2, v1, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    iget-object p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {p2, v1, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :cond_8
    iput-boolean v1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return v0

    :cond_9
    iput-boolean v1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return v1

    :cond_a
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v3, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v2, v3}, Lorg/apache/xmlbeans/impl/regex/BMPattern;->matches(Ljava/text/CharacterIterator;II)I

    move-result p2

    if-gez p2, :cond_b

    iput-boolean v1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return v1

    :cond_b
    iget p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->minlength:I

    sub-int/2addr p2, v2

    const/4 v2, -0x1

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    if-eqz v3, :cond_10

    iget v4, v3, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_10

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    iget v3, v3, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    if-nez v3, :cond_10

    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_c

    iget p1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v3, p0

    move-object v4, v9

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p2

    goto/16 :goto_b

    :cond_c
    iget v3, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v4, v0

    move v12, v3

    move v3, v2

    move v2, v12

    :goto_1
    if-gt v2, p2, :cond_f

    invoke-interface {p1, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-eqz v5, :cond_d

    move v4, v0

    goto :goto_2

    :cond_d
    if-eqz v4, :cond_e

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v3, p0

    move-object v4, v9

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v3

    if-ltz v3, :cond_e

    goto :goto_3

    :cond_e
    move v4, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_f
    :goto_3
    move p2, v3

    move p1, v2

    goto/16 :goto_b

    :cond_10
    iget-object v10, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    if-eqz v10, :cond_19

    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->getCaseInsensitiveToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v10

    iget v3, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v11, v3

    :goto_4
    if-gt v11, p2, :cond_18

    invoke-interface {p1, v11}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_11

    add-int/lit8 v4, v11, 0x1

    iget v5, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v4, v5, :cond_11

    invoke-interface {p1, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v3

    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_5

    :cond_11
    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v4

    if-nez v4, :cond_12

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_5

    :cond_12
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v3, p0

    move-object v4, v9

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v2

    if-ltz v2, :cond_13

    goto :goto_8

    :cond_13
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_14
    iget v3, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v11, v3

    :goto_6
    if-gt v11, p2, :cond_18

    invoke-interface {p1, v11}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_15

    add-int/lit8 v4, v11, 0x1

    iget v5, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v4, v5, :cond_15

    invoke-interface {p1, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v3

    :cond_15
    invoke-virtual {v10, v3}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_7

    :cond_16
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v3, p0

    move-object v4, v9

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v2

    if-ltz v2, :cond_17

    goto :goto_8

    :cond_17
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_18
    :goto_8
    move p2, v2

    move p1, v11

    goto :goto_b

    :cond_19
    iget p1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    :goto_9
    if-gt p1, p2, :cond_1b

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v3, p0

    move-object v4, v9

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharacterIterator(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v2

    if-ltz v2, :cond_1a

    goto :goto_a

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_1b
    :goto_a
    move p2, v2

    :goto_b
    if-ltz p2, :cond_1d

    iget-object v2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz v2, :cond_1c

    invoke-virtual {v2, v1, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    iget-object p1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, v1, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :cond_1c
    iput-boolean v1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return v0

    :cond_1d
    iput-boolean v1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return v1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public matches([C)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lorg/apache/xmlbeans/impl/regex/Match;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches([CIILorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public matches([CII)Z
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches([CIILorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public matches([CIILorg/apache/xmlbeans/impl/regex/Match;)Z
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->prepare()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    iget-boolean v2, v1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    if-eqz v2, :cond_2

    new-instance v1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;-><init>()V

    :cond_2
    move-object v7, v1

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->numberOfClosures:I

    invoke-virtual {v7, p1, p2, p3, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->reset([CIII)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p4, :cond_3

    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setNumberOfGroups(I)V

    invoke-virtual {p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setSource([C)V

    goto :goto_0

    :cond_3
    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    if-eqz p2, :cond_4

    new-instance p4, Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-direct {p4}, Lorg/apache/xmlbeans/impl/regex/Match;-><init>()V

    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setNumberOfGroups(I)V

    :cond_4
    :goto_0
    iput-object p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/16 p3, 0x200

    invoke-static {p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_7

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    iget v4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p1

    iget p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne p1, p2, :cond_6

    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p2, :cond_5

    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    invoke-virtual {p2, p4, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p2, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :cond_5
    iput-boolean p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return p3

    :cond_6
    return p4

    :cond_7
    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/regex/BMPattern;->matches([CII)I

    move-result p1

    if-ltz p1, :cond_9

    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p2, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :cond_8
    iput-boolean p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return p3

    :cond_9
    iput-boolean p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return p4

    :cond_a
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/regex/BMPattern;->matches([CII)I

    move-result p2

    if-gez p2, :cond_b

    iput-boolean p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return p4

    :cond_b
    iget p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->minlength:I

    sub-int/2addr p2, v0

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    if-eqz v1, :cond_10

    iget v2, v1, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_10

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v1

    iget v1, v1, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    if-nez v1, :cond_10

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_c

    iget p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p2

    goto/16 :goto_b

    :cond_c
    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v2, p3

    move v10, v1

    move v1, v0

    move v0, v10

    :goto_1
    if-gt v0, p2, :cond_f

    aget-char v3, p1, v0

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v3

    if-eqz v3, :cond_d

    move v2, p3

    goto :goto_2

    :cond_d
    if-eqz v2, :cond_e

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_e

    goto :goto_3

    :cond_e
    move v2, p4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    :goto_3
    move p2, v1

    move p1, v0

    goto/16 :goto_b

    :cond_10
    iget-object v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    if-eqz v8, :cond_19

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->getCaseInsensitiveToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v8

    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v9, v1

    :goto_4
    if-gt v9, p2, :cond_18

    aget-char v1, p1, v9

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_11

    add-int/lit8 v2, v9, 0x1

    iget v3, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v2, v3, :cond_11

    aget-char v2, p1, v2

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_5

    :cond_11
    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_12

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_5

    :cond_12
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, v9

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v0

    if-ltz v0, :cond_13

    goto :goto_8

    :cond_13
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_14
    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v9, v1

    :goto_6
    if-gt v9, p2, :cond_18

    aget-char v1, p1, v9

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v2, v9, 0x1

    iget v3, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v2, v3, :cond_15

    aget-char v2, p1, v2

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v1

    :cond_15
    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_7

    :cond_16
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, v9

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v0

    if-ltz v0, :cond_17

    goto :goto_8

    :cond_17
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_18
    :goto_8
    move p2, v0

    move p1, v9

    goto :goto_b

    :cond_19
    iget p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    :goto_9
    if-gt p1, p2, :cond_1b

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchCharArray(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v0

    if-ltz v0, :cond_1a

    goto :goto_a

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_1b
    :goto_a
    move p2, v0

    :goto_b
    if-ltz p2, :cond_1d

    iget-object v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    iget-object p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, p4, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :cond_1c
    iput-boolean p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return p3

    :cond_1d
    iput-boolean p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    return p4

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public matches([CLorg/apache/xmlbeans/impl/regex/Match;)Z
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches([CIILorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p1

    return p1
.end method

.method public prepare()V
    .locals 9

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->getMinLength()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->minlength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    const/16 v2, 0x200

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    iget v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-virtual {v4, v1, v5}, Lorg/apache/xmlbeans/impl/regex/Token;->analyzeFirstCharacter(Lorg/apache/xmlbeans/impl/regex/RangeToken;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v4, 0x2

    const/16 v5, 0x100

    if-eqz v1, :cond_4

    iget v6, v1, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    if-ne v6, v3, :cond_4

    :cond_1
    iget-object v8, v1, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    if-nez v8, :cond_4

    iput-boolean v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    if-ne v6, v7, :cond_2

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/Op;->getString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v0

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-array v0, v3, [C

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    :goto_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOptions:I

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOptions:I

    invoke-static {v2, v4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/xmlbeans/impl/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    :goto_2
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    goto :goto_4

    :cond_4
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-static {v1, v5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-virtual {v2, v1, v3}, Lorg/apache/xmlbeans/impl/regex/Token;->findFixedString(Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;I)V

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;->token:Lorg/apache/xmlbeans/impl/regex/Token;

    if-nez v2, :cond_5

    move-object v2, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iget v1, v1, Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;->options:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOptions:I

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_6

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOptions:I

    invoke-static {v2, v4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/xmlbeans/impl/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->setPattern(Ljava/lang/String;I)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/regex/REUtil;->parseOptions(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->setPattern(Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
