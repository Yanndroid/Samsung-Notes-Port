.class public La2/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/network/networkutils/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2/d;->m(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;La2/d$f;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La2/d$f;

.field public final synthetic b:[I

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(La2/d$f;[ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, La2/d$b;->a:La2/d$f;

    iput-object p2, p0, La2/d$b;->b:[I

    iput-object p3, p0, La2/d$b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uploadFile response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NT$NoteServiceHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, La2/d$b;->a:La2/d$f;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "uploadFile succeeded"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, La2/d$b;->a:La2/d$f;

    invoke-interface {p1, p2}, La2/d$f;->a(I)V

    :cond_0
    iget-object p1, p0, La2/d$b;->b:[I

    aput p2, p1, p2

    return-void

    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "rcode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x4a40

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4a4a

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4e23

    if-eq p1, v0, :cond_4

    const v0, 0x98c7

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e20

    if-eq p1, v0, :cond_3

    const v0, 0x1381e

    if-ne p1, v0, :cond_2

    new-instance p1, Ls0/c;

    const/16 v0, 0x1f7

    invoke-direct {p1, v0, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    new-instance p1, Ls0/c;

    const/16 p2, 0x13b

    const-string v0, "Upload Fail"

    invoke-direct {p1, p2, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    :try_start_1
    new-instance p1, Ls0/c;

    const/16 v0, 0x1f5

    invoke-direct {p1, v0, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ls0/c;

    const/16 v0, 0x137

    invoke-direct {p1, v0, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_5
    iget-object p1, p0, La2/d$b;->c:Landroid/content/Context;

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a;->x()V

    invoke-static {}, Lk2/d;->e()V

    const-string p1, "access token is expired"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ls0/c;

    const/16 v0, 0x12f

    invoke-direct {p1, v0, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResponse err : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ls0/c;

    const/16 v0, 0x130

    invoke-direct {p2, v0, p1}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method
