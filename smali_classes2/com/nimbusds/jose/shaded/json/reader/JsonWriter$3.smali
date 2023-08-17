.class Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI<",
        "Lcom/nimbusds/jose/shaded/json/JSONAwareEx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJSONString(Lcom/nimbusds/jose/shaded/json/JSONAwareEx;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/nimbusds/jose/shaded/json/JSONAwareEx;",
            ">(TE;",
            "Ljava/lang/Appendable;",
            "Lcom/nimbusds/jose/shaded/json/JSONStyle;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p3}, Lcom/nimbusds/jose/shaded/json/JSONAwareEx;->toJSONString(Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public bridge synthetic writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .locals 0

    check-cast p1, Lcom/nimbusds/jose/shaded/json/JSONAwareEx;

    invoke-virtual {p0, p1, p2, p3}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter$3;->writeJSONString(Lcom/nimbusds/jose/shaded/json/JSONAwareEx;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    return-void
.end method
