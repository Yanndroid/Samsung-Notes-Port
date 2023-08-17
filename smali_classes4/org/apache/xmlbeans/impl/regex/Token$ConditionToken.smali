.class Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;
.super Lorg/apache/xmlbeans/impl/regex/Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionToken"
.end annotation


# instance fields
.field public condition:Lorg/apache/xmlbeans/impl/regex/Token;

.field public no:Lorg/apache/xmlbeans/impl/regex/Token;

.field public refNumber:I

.field public yes:Lorg/apache/xmlbeans/impl/regex/Token;


# direct methods
.method public constructor <init>(ILorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/regex/Token;-><init>(I)V

    iput p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->refNumber:I

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->condition:Lorg/apache/xmlbeans/impl/regex/Token;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->yes:Lorg/apache/xmlbeans/impl/regex/Token;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->no:Lorg/apache/xmlbeans/impl/regex/Token;

    return-void
.end method


# virtual methods
.method public getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->yes:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->no:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Internal Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->no:Lorg/apache/xmlbeans/impl/regex/Token;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    iget p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->refNumber:I

    const-string v0, "(?("

    const-string v1, ")"

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->refNumber:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->condition:Lorg/apache/xmlbeans/impl/regex/Token;

    iget p1, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->condition:Lorg/apache/xmlbeans/impl/regex/Token;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "(?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->condition:Lorg/apache/xmlbeans/impl/regex/Token;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->no:Lorg/apache/xmlbeans/impl/regex/Token;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->yes:Lorg/apache/xmlbeans/impl/regex/Token;

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->yes:Lorg/apache/xmlbeans/impl/regex/Token;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->no:Lorg/apache/xmlbeans/impl/regex/Token;

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
