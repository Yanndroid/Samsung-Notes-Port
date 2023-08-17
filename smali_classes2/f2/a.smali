.class public Lf2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;La2/d$f;)I
    .locals 2
    .param p2    # La2/d$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "ActivatePushUsingPam"

    const-string p2, "[PUSH] activatePush()"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/4 v0, -0x1

    aput v0, p1, p2

    invoke-static {}, Lk2/d;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    aput p2, p1, p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lf2/d;->a(I)V

    :goto_0
    aget p1, p1, p2

    return p1
.end method
