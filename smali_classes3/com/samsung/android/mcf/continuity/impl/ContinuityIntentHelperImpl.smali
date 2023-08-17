.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityIntentHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl$SingletonHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl$SingletonHolder;->access$000()Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContinuityNearbyMyDevice(Landroid/content/Intent;)Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityIntent;->getContinuityNearbyMyDevice(Landroid/content/Intent;)Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;

    move-result-object p1

    return-object p1
.end method

.method public getContinuityNetworkPolicy(Landroid/content/Intent;)Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityIntent;->getContinuityNetworkPolicy(Landroid/content/Intent;)Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;

    move-result-object p1

    return-object p1
.end method

.method public getMessage(Landroid/content/Intent;)[B
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityIntent;->getMessage(Landroid/content/Intent;)[B

    move-result-object p1

    return-object p1
.end method
