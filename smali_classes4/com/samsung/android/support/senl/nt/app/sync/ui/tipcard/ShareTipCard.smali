.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/ShareTipCard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/IModelTipCard;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareTipCard"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addErrorTipCard(Landroid/content/Context;Lc1/a;)V
    .locals 0

    invoke-virtual {p2}, Lc1/b;->a()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/16 p2, 0x40

    if-eq p1, p2, :cond_2

    const/16 p2, 0x80

    if-eq p1, p2, :cond_1

    const/16 p2, 0x400

    if-eq p1, p2, :cond_0

    const/16 p2, 0x1000

    if-eq p1, p2, :cond_4

    const-string p1, "ShareTipCard"

    const-string p2, "addErrorTipCard() : Unknown error code!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object p1

    new-instance p2, Lb3/o;

    invoke-direct {p2}, Lb3/o;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object p1

    new-instance p2, Lb3/o;

    invoke-direct {p2}, Lb3/o;-><init>()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object p1

    new-instance p2, Lb3/o;

    invoke-direct {p2}, Lb3/o;-><init>()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object p1

    new-instance p2, Lb3/o;

    invoke-direct {p2}, Lb3/o;-><init>()V

    :goto_0
    invoke-virtual {p1, p2}, Lb3/u;->b(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public addInfoTipCard(Landroid/content/Context;Lc1/b;)V
    .locals 0

    return-void
.end method

.method public removeTipCard(Landroid/content/Context;I)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p1, "ShareTipCard"

    const-string p2, "removeTipCard() : Unknown error code!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object p1

    invoke-virtual {p1}, Lb3/u;->r()V

    :goto_0
    return-void
.end method
