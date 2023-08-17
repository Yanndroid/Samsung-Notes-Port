.class public final Lcom/samsung/android/app/sdk/deepsky/DeepSky;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 02\u00020\u0001:\u00010B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010)\u001a\u0004\u0018\u00010\u0006H\u0007J\n\u0010*\u001a\u0004\u0018\u00010\u000cH\u0007J\n\u0010+\u001a\u0004\u0018\u00010\u0011H\u0007J\n\u0010,\u001a\u0004\u0018\u00010\u0016H\u0007J\n\u0010-\u001a\u0004\u0018\u00010\u001bH\u0007J\n\u0010.\u001a\u0004\u0018\u00010 H\u0007J\n\u0010/\u001a\u0004\u0018\u00010%H\u0007R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\u000b\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0010\u001a\u0004\u0018\u00010\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\n\u001a\u0004\u0008\u0012\u0010\u0013R\u001d\u0010\u0015\u001a\u0004\u0018\u00010\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\n\u001a\u0004\u0008\u0017\u0010\u0018R\u001d\u0010\u001a\u001a\u0004\u0018\u00010\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\n\u001a\u0004\u0008\u001c\u0010\u001dR\u001d\u0010\u001f\u001a\u0004\u0018\u00010 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\n\u001a\u0004\u0008!\u0010\"R\u001d\u0010$\u001a\u0004\u0018\u00010%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\n\u001a\u0004\u0008&\u0010\'\u00a8\u00061"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/DeepSky;",
        "",
        "appContext",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "donationByLazy",
        "Lcom/samsung/android/app/sdk/deepsky/donation/Donation;",
        "getDonationByLazy",
        "()Lcom/samsung/android/app/sdk/deepsky/donation/Donation;",
        "donationByLazy$delegate",
        "Lkotlin/Lazy;",
        "feedbackByLazy",
        "Lcom/samsung/android/app/sdk/deepsky/feedback/Feedback;",
        "getFeedbackByLazy",
        "()Lcom/samsung/android/app/sdk/deepsky/feedback/Feedback;",
        "feedbackByLazy$delegate",
        "searchByLazy",
        "Lcom/samsung/android/app/sdk/deepsky/search/Search;",
        "getSearchByLazy",
        "()Lcom/samsung/android/app/sdk/deepsky/search/Search;",
        "searchByLazy$delegate",
        "smartWidgetByLazy",
        "Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidget;",
        "getSmartWidgetByLazy",
        "()Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidget;",
        "smartWidgetByLazy$delegate",
        "suggestionRequestByLazy",
        "Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;",
        "getSuggestionRequestByLazy",
        "()Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;",
        "suggestionRequestByLazy$delegate",
        "visionTextByLazy",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;",
        "getVisionTextByLazy",
        "()Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;",
        "visionTextByLazy$delegate",
        "widgetRotationByLazy",
        "Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotation;",
        "getWidgetRotationByLazy",
        "()Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotation;",
        "widgetRotationByLazy$delegate",
        "getDonation",
        "getFeedback",
        "getSearch",
        "getSmartWidget",
        "getSuggestionRequest",
        "getVisionText",
        "getWidgetRotation",
        "Companion",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DeepSkyLibrary"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile instance:Lcom/samsung/android/app/sdk/deepsky/DeepSky;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final donationByLazy$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final feedbackByLazy$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchByLazy$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final smartWidgetByLazy$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final suggestionRequestByLazy$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final visionTextByLazy$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final widgetRotationByLazy$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->Companion:Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$suggestionRequestByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$suggestionRequestByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->suggestionRequestByLazy$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$donationByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$donationByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->donationByLazy$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$searchByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$searchByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->searchByLazy$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$widgetRotationByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$widgetRotationByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->widgetRotationByLazy$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$feedbackByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$feedbackByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->feedbackByLazy$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$visionTextByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$visionTextByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->visionTextByLazy$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$smartWidgetByLazy$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$smartWidgetByLazy$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->smartWidgetByLazy$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/samsung/android/app/sdk/deepsky/DeepSky;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->instance:Lcom/samsung/android/app/sdk/deepsky/DeepSky;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/samsung/android/app/sdk/deepsky/DeepSky;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->instance:Lcom/samsung/android/app/sdk/deepsky/DeepSky;

    return-void
.end method

.method private final getDonationByLazy()Lcom/samsung/android/app/sdk/deepsky/donation/Donation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->donationByLazy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/donation/Donation;

    return-object v0
.end method

.method private final getFeedbackByLazy()Lcom/samsung/android/app/sdk/deepsky/feedback/Feedback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->feedbackByLazy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/feedback/Feedback;

    return-object v0
.end method

.method private final getSearchByLazy()Lcom/samsung/android/app/sdk/deepsky/search/Search;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->searchByLazy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/search/Search;

    return-object v0
.end method

.method private final getSmartWidgetByLazy()Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidget;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->smartWidgetByLazy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidget;

    return-object v0
.end method

.method private final getSuggestionRequestByLazy()Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->suggestionRequestByLazy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;

    return-object v0
.end method

.method private final getVisionTextByLazy()Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->visionTextByLazy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;

    return-object v0
.end method

.method private final getWidgetRotationByLazy()Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->widgetRotationByLazy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotation;

    return-object v0
.end method

.method public static final isSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->Companion:Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;->isSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final with(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/DeepSky;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->Companion:Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$Companion;->with(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/DeepSky;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDonation()Lcom/samsung/android/app/sdk/deepsky/donation/Donation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->getDonationByLazy()Lcom/samsung/android/app/sdk/deepsky/donation/Donation;

    move-result-object v0

    return-object v0
.end method

.method public final getFeedback()Lcom/samsung/android/app/sdk/deepsky/feedback/Feedback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->getFeedbackByLazy()Lcom/samsung/android/app/sdk/deepsky/feedback/Feedback;

    move-result-object v0

    return-object v0
.end method

.method public final getSearch()Lcom/samsung/android/app/sdk/deepsky/search/Search;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->getSearchByLazy()Lcom/samsung/android/app/sdk/deepsky/search/Search;

    move-result-object v0

    return-object v0
.end method

.method public final getSmartWidget()Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidget;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->getSmartWidgetByLazy()Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidget;

    move-result-object v0

    return-object v0
.end method

.method public final getSuggestionRequest()Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->getSuggestionRequestByLazy()Lcom/samsung/android/app/sdk/deepsky/suggestion/SuggestionRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getVisionText()Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->getVisionTextByLazy()Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->getVisionTextByLazy()Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;

    move-result-object v1

    const-string v2, "VisionTextImpl object -->"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeepSkyLibrary"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getWidgetRotation()Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky;->getWidgetRotationByLazy()Lcom/samsung/android/app/sdk/deepsky/widgetrotation/WidgetRotation;

    move-result-object v0

    return-object v0
.end method
