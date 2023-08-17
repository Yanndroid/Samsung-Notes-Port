.class public Lcom/nimbusds/jose/shaded/json/JSONArray;
.super Ljava/util/ArrayList;
.source "SourceFile"

# interfaces
.implements Lcom/nimbusds/jose/shaded/json/JSONAwareEx;
.implements Lcom/nimbusds/jose/shaded/json/JSONStreamAwareEx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/nimbusds/jose/shaded/json/JSONAwareEx;",
        "Lcom/nimbusds/jose/shaded/json/JSONStreamAwareEx;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7e6226d42d49fb00L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static toJSONString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONArray;->toJSONString(Ljava/util/List;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONString(Ljava/util/List;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nimbusds/jose/shaded/json/JSONStyle;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-static {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONArray;->writeJSONString(Ljava/lang/Iterable;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeJSONString(Ljava/lang/Iterable;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Appendable;",
            "Lcom/nimbusds/jose/shaded/json/JSONStyle;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_0
    sget-object v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->JSONIterableWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    invoke-interface {v0, p0, p1, p2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    return-void
.end method

.method public static writeJSONString(Ljava/util/List;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Appendable;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, p1, v0}, Lcom/nimbusds/jose/shaded/json/JSONArray;->writeJSONString(Ljava/lang/Iterable;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    return-void
.end method


# virtual methods
.method public merge(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONObject;->merge(Lcom/nimbusds/jose/shaded/json/JSONArray;Ljava/lang/Object;)Lcom/nimbusds/jose/shaded/json/JSONArray;

    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONArray;->toJSONString(Ljava/util/List;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJSONString(Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONArray;->toJSONString(Ljava/util/List;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONArray;->toJSONString(Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, p1, v0}, Lcom/nimbusds/jose/shaded/json/JSONArray;->writeJSONString(Ljava/lang/Iterable;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    return-void
.end method

.method public writeJSONString(Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nimbusds/jose/shaded/json/JSONArray;->writeJSONString(Ljava/lang/Iterable;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    return-void
.end method
