.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doAction(Ljava/lang/String;)Z
.end method

.method public doAction(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/action/AbsAction;->doAction(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
