.class public abstract Lcom/samsung/android/support/senl/addons/executor/AbsExecuteIntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001c\u0010\u000c\u001a\u00020\u00012\u0012\u0010\r\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0007H\u0016R\u0018\u0010\u0003\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/executor/AbsExecuteIntentBuilder;",
        "Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;",
        "()V",
        "mDataHandler",
        "Ljava/lang/Class;",
        "Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;",
        "mIntentFlags",
        "",
        "build",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "setDataHandler",
        "dataHandler",
        "setIntentFlags",
        "flags",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private mDataHandler:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIntentFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x24000000

    iput v0, p0, Lcom/samsung/android/support/senl/addons/executor/AbsExecuteIntentBuilder;->mIntentFlags:I

    const-class v0, Lcom/samsung/android/support/senl/addons/executor/DataHandler;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/executor/AbsExecuteIntentBuilder;->mDataHandler:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/executor/AbsExecuteIntentBuilder;->mDataHandler:Ljava/lang/Class;

    const-string v1, "data_handler_class"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget v0, p0, Lcom/samsung/android/support/senl/addons/executor/AbsExecuteIntentBuilder;->mIntentFlags:I

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p1
.end method

.method public setDataHandler(Ljava/lang/Class;)Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;",
            ">;)",
            "Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/executor/AbsExecuteIntentBuilder;->mDataHandler:Ljava/lang/Class;

    return-object p0
.end method

.method public setIntentFlags(I)Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/samsung/android/support/senl/addons/executor/AbsExecuteIntentBuilder;->mIntentFlags:I

    return-object p0
.end method
