.class public abstract Le2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le2/c;

.field public b:Le2/d;

.field public c:Le2/b;


# direct methods
.method public constructor <init>(Le2/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le2/e;->a:Le2/c;

    iput-object v0, p0, Le2/e;->b:Le2/d;

    iput-object p1, p0, Le2/e;->c:Le2/b;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Le2/e;->a:Le2/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le2/c;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "PushClient"

    const-string v0, "[PUSH] registerPush() : mRegisterMethod is null!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Le2/e;->a:Le2/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le2/c;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "PushClient"

    const-string v0, "[PUSH] unregisterPush : mRegisterMethod is null!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
