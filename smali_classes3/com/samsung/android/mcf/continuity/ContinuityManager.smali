.class public Lcom/samsung/android/mcf/continuity/ContinuityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContinuityAdapter(Landroid/content/Context;)Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->getInstance()Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    move-result-object p0

    return-object p0
.end method

.method public static getContinuityIntentHelper(Landroid/content/Context;)Lcom/samsung/android/mcf/continuity/api/ContinuityIntentHelper;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl;->getInstance()Lcom/samsung/android/mcf/continuity/impl/ContinuityIntentHelperImpl;

    move-result-object p0

    return-object p0
.end method

.method public static getSDKVersionCode()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->getSDKVersionCode()I

    move-result v0

    return v0
.end method

.method public static getServiceVersionCode(Landroid/content/Context;)J
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil;->getServiceVersionCode(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method
