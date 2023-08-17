.class final Lcom/samsung/android/app/sdk/deepsky/DeepSky$widgetRotationByLazy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/DeepSky;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0006\n\u0002\u0018\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic $appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$widgetRotationByLazy$2;->$appContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/common/Injector;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/common/Injector;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$widgetRotationByLazy$2;->$appContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/sdk/deepsky/common/Injector;->provideServiceCaller$deepsky_sdk_2_2_9_release(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$widgetRotationByLazy$2;->$appContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/sdk/deepsky/common/Injector;->shareSystemDatasource$deepsky_sdk_2_2_9_release(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;-><init>(Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$widgetRotationByLazy$2;->invoke()Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotationImpl;

    move-result-object v0

    return-object v0
.end method
