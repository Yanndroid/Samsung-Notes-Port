.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;
    }
.end annotation


# static fields
.field private static final SUBSCRIBE_ID:I = 0xac9c7b


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCaller:I

.field private mIntent:Landroid/content/Intent;

.field private mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

.field private mType:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCaller()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->mCaller:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getSubscribeId()I
    .locals 1

    const v0, 0xac9c7b

    return v0
.end method

.method public getSuggestionInfo()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    return-object v0
.end method

.method public getType()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->mType:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setCaller(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->mCaller:I

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setSuggestionInfo(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->mSuggestionInfo:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;

    return-void
.end method

.method public setType(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->mType:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$1;->$SwitchMap$com$samsung$android$support$senl$nt$model$contextawareness$common$param$IContextAwarenessParam$Type:[I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->mType:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "NONE"

    goto :goto_0

    :cond_0
    const-string v0, "UNSUBSCRIBE_SUGGESTION"

    goto :goto_0

    :cond_1
    const-string v0, "ATTACH_CONTENT"

    goto :goto_0

    :cond_2
    const-string v0, "EXECUTE_ACTION"

    goto :goto_0

    :cond_3
    const-string v0, "DRAW_SUGGESTION"

    goto :goto_0

    :cond_4
    const-string v0, "SUBSCRIBE_SUGGESTION"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContextAwarenessParam{subScribeId=\'11312251\', caller=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->mCaller:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", type=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
