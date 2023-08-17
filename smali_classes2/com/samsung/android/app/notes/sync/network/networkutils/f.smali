.class public abstract Lcom/samsung/android/app/notes/sync/network/networkutils/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/network/networkutils/b$c;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/f;->a:Z

    return-void
.end method


# virtual methods
.method public d(ILjava/lang/String;)V
    .locals 5

    const-string v0, "SCloudResponseHandler"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "rcode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RCODE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x4a40

    const/16 v4, 0x13b

    if-eq v2, v3, :cond_5

    const/16 p1, 0x4e23

    if-eq v2, p1, :cond_4

    const p1, 0x98c7

    if-eq v2, p1, :cond_4

    const/16 p1, 0x791a

    if-eq v2, p1, :cond_3

    const/16 p1, 0x7d06

    if-eq v2, p1, :cond_3

    const/16 p1, 0x4e20

    if-eq v2, p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/f;->a:Z

    if-eqz p1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ls0/c;

    invoke-direct {p1, v4, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/f;->e(ILorg/json/JSONObject;)V

    return-void

    :cond_2
    new-instance p1, Ls0/c;

    const/16 v1, 0x1f5

    invoke-direct {p1, v1, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ls0/c;

    const/16 v1, 0x13f

    invoke-direct {p1, v1, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ls0/c;

    const/16 v1, 0x137

    invoke-direct {p1, v1, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_5
    const-string v1, "access token is invalid!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", response ="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v4, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSCloudResponse err : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ls0/c;

    const/16 v0, 0x130

    invoke-direct {p2, v0, p1}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method public abstract e(ILorg/json/JSONObject;)V
.end method
