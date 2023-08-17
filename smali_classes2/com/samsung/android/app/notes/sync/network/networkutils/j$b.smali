.class public Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/network/networkutils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->b:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->g(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->h(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;-><init>()V

    :try_start_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->h(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;

    move-result-object v1

    iget-object v2, v1, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->c:Ljava/util/Map;

    iput-object v2, v0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->c:Ljava/util/Map;

    iget-object v1, v1, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to parseLine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SyncHttpResponse"

    invoke-static {v2, p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;
    .locals 9

    new-instance v0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;-><init>()V

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->c:Ljava/util/Map;

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v8, ""

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->c:Ljava/util/Map;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parseLine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SyncHttpResponse"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$b;->b:Ljava/lang/String;

    return-object v0
.end method
