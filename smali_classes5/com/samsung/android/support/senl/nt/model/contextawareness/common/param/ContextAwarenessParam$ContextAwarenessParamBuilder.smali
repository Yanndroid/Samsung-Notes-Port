.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContextAwarenessParamBuilder"
.end annotation


# instance fields
.field private final mContextAwarenessParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->mContextAwarenessParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->mContextAwarenessParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->mContextAwarenessParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->setActivity(Landroid/app/Activity;)V

    return-object p0
.end method

.method public setCaller(I)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->mContextAwarenessParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->setCaller(I)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->mContextAwarenessParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->setIntent(Landroid/content/Intent;)V

    return-object p0
.end method

.method public setSuggestionInfo(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->mContextAwarenessParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->setSuggestionInfo(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;)V

    return-object p0
.end method

.method public setType(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->mContextAwarenessParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->setType(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;)V

    return-object p0
.end method
