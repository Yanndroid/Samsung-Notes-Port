.class Lcom/google/api/client/json/gson/GsonGenerator;
.super Lcom/google/api/client/json/JsonGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;
    }
.end annotation


# instance fields
.field private final factory:Lcom/google/api/client/json/gson/GsonFactory;

.field private final writer:Lcom/google/gson/stream/JsonWriter;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/gson/GsonFactory;Lcom/google/gson/stream/JsonWriter;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/json/JsonGenerator;-><init>()V

    iput-object p1, p0, Lcom/google/api/client/json/gson/GsonGenerator;->factory:Lcom/google/api/client/json/gson/GsonFactory;

    iput-object p2, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->close()V

    return-void
.end method

.method public enablePrettyPrint()V
    .locals 2

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->flush()V

    return-void
.end method

.method public getFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->factory:Lcom/google/api/client/json/gson/GsonFactory;

    return-object v0
.end method

.method public writeBoolean(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeEndArray()V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeEndObject()V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeNull()V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeNumber(D)V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(D)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeNumber(F)V
    .locals 3

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(D)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeNumber(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeNumber(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    new-instance v1, Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;

    invoke-direct {v1, p1}, Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeStartArray()V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeStartObject()V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
