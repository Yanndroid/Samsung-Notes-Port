.class public interface abstract Lcom/samsung/android/mcf/continuity/api/ContinuityIntentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getContinuityNearbyMyDevice(Landroid/content/Intent;)Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getContinuityNetworkPolicy(Landroid/content/Intent;)Lcom/samsung/android/mcf/continuity/api/ContinuityNetworkPolicy;
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMessage(Landroid/content/Intent;)[B
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
