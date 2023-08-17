.class public abstract Lw0/a;
.super Lt0/i;
.source "SourceFile"


# instance fields
.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt0/i;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lw0/a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lt0/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasCloudSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lw0/a;->c()V

    :goto_0
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lt0/i;->a:Landroid/content/Context;

    iget v1, p0, Lw0/a;->c:I

    invoke-static {v0, v1}, Ly2/c;->i(Landroid/content/Context;I)V

    return-void
.end method
