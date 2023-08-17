.class public final Lcom/samsung/android/penup/PenupClient$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/penup/PenupClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mScopeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mClientId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mContext:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mScopeList:Ljava/util/ArrayList;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The context is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addScope(Lcom/samsung/android/penup/Scope;)Lcom/samsung/android/penup/PenupClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mScopeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/penup/Scope;->getScope()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/penup/PenupClient;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mClientId:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mScopeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/samsung/android/penup/PenupClient;

    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mClientId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mScopeList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/penup/PenupClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/penup/PenupClient$ConnectionCallback;Lcom/samsung/android/penup/PenupClient$1;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The scope is not added."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection callback is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The client ID is null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallback(Lcom/samsung/android/penup/PenupClient$ConnectionCallback;)Lcom/samsung/android/penup/PenupClient$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/samsung/android/penup/PenupClient$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/PenupClient$Builder;->mClientId:Ljava/lang/String;

    return-object p0
.end method
