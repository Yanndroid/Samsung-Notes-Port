.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/RecogEngineConstructor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeRecognizerManager(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static makeResourceProvider(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$EngineType;Lcom/samsung/android/sdk/pen/recogengine/SpenResourceProvider$ResourceType;)V

    return-object v0
.end method
