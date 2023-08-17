.class public La2/b$a;
.super Lcom/samsung/android/app/notes/sync/network/networkutils/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2/b;->c(Ljava/lang/String;J)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[I

.field public final synthetic c:[Ljava/lang/String;

.field public final synthetic d:[Lorg/json/JSONObject;

.field public final synthetic e:La2/b;


# direct methods
.method public constructor <init>(La2/b;[I[Ljava/lang/String;[Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, La2/b$a;->e:La2/b;

    iput-object p2, p0, La2/b$a;->b:[I

    iput-object p3, p0, La2/b$a;->c:[Ljava/lang/String;

    iput-object p4, p0, La2/b$a;->d:[Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/f;-><init>()V

    return-void
.end method


# virtual methods
.method public e(ILorg/json/JSONObject;)V
    .locals 5

    iget-object v0, p0, La2/b$a;->b:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object p1, p0, La2/b$a;->c:[Ljava/lang/String;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La2/b$a;->d:[Lorg/json/JSONObject;

    aput-object p2, p1, v1

    goto :goto_1

    :cond_0
    const-string p1, "children"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v2, p0, La2/b$a;->d:[Lorg/json/JSONObject;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "next"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La2/b$a;->c:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_2

    :cond_2
    iget-object p1, p0, La2/b$a;->c:[Ljava/lang/String;

    const-string p2, ""

    aput-object p2, p1, v1

    :goto_2
    return-void
.end method
