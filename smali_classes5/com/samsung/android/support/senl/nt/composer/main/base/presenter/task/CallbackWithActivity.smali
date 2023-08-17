.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/CallbackWithActivity;->mActivity:Landroid/app/Activity;

    return-void
.end method
