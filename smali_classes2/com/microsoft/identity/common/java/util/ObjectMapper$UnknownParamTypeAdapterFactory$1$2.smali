.class Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;
.super Lcom/google/gson/stream/JsonReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public lastName:Ljava/lang/String;

.field public final synthetic this$1:Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1;

.field public final synthetic val$in:Lcom/google/gson/stream/JsonReader;

.field public final synthetic val$otherKeys:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1;Ljava/io/Reader;Lcom/google/gson/stream/JsonReader;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->this$1:Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    iput-object p4, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$otherKeys:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->lastName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public beginArray()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    return-void
.end method

.method public beginObject()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V

    return-void
.end method

.method public endArray()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endArray()V

    return-void
.end method

.method public endObject()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextBoolean()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public nextNull()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public skipValue()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$otherKeys:Ljava/util/Map;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->lastName:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/util/ObjectMapper$UnknownParamTypeAdapterFactory$1$2;->val$in:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
