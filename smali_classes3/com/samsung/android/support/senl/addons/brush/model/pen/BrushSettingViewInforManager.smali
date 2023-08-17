.class public final Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\u0006\u0010\u000f\u001a\u00020\u0008J\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004J+\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00082\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0016H\u0002\u00a2\u0006\u0002\u0010\u0017R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;",
        "",
        "()V",
        "mPenInfoList",
        "Ljava/util/Hashtable;",
        "",
        "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
        "mSelectedPenIndex",
        "",
        "mSharedPreferences",
        "Landroid/content/SharedPreferences;",
        "close",
        "",
        "getPenKey",
        "name",
        "getSelectedPenIndex",
        "loadData",
        "makePenInfoList",
        "isHsv",
        "",
        "count",
        "data",
        "",
        "(ZI[Ljava/lang/String;)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager; = null
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_SETTING_PEN_INFO:Ljava/lang/String; = "KEY_SETTING_PEN_INFO"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PEN_INFO_ITEM_COUNT:I = 0x6

.field private static final PEN_INFO_ITEM_COUNT_ADD:I = 0x9

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "_spensettings_drawing_v5"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mPenInfoList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSelectedPenIndex:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager$Companion;

    const-string v0, "BrushSettingViewInforManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->mPenInfoList:Ljava/util/Hashtable;

    return-void
.end method

.method private final getPenKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\."

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    new-instance v0, Lkotlin/text/Regex;

    const-string v2, ".*[0-9]*."

    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private final makePenInfoList(ZI[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    if-eqz p1, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_5

    new-instance v5, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {v5}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>()V

    mul-int v6, v4, v2

    add-int/lit8 v7, v6, 0x2

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    add-int/lit8 v7, v6, 0x4

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    add-int/lit8 v7, v6, 0x5

    aget-object v7, p3, v7

    iput-object v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v8, "info.name"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "OilBrush2"

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v7, v9, v3, v10, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v12, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0x32

    const/16 v14, 0x33

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "convert OilBrush version 2 -> 3 : "

    :goto_2
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    iget-object v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "Pencil2"

    invoke-static {v7, v9, v3, v10, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v12, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0x32

    const/16 v14, 0x33

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "convert Pencil version 2 -> 3 : "

    goto :goto_2

    :cond_2
    iget-object v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "Crayon"

    invoke-static {v7, v9, v3, v10, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "com.samsung.android.sdk.pen.pen.preload.Crayon2"

    iput-object v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "convert Crayon version 1 -> 2 : "

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v7, v6, 0x6

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    add-int/lit8 v7, v6, 0x7

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    if-eqz p1, :cond_4

    iget-object v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    add-int/lit8 v9, v6, 0x8

    aget-object v9, p3, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v7, v3

    iget-object v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    add-int/lit8 v9, v6, 0x9

    aget-object v9, p3, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    const/4 v11, 0x1

    aput v9, v7, v11

    iget-object v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    add-int/lit8 v6, v6, 0xa

    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v7, v10

    goto :goto_4

    :cond_4
    iget v6, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v7, v5, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {v6, v7}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->colorToHSV(I[F)V

    :goto_4
    iget-object v6, v5, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->getPenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->mPenInfoList:Ljava/util/Hashtable;

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    const/16 v2, 0xa

    if-ge v1, v2, :cond_7

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->getINFO_PREV_PEN_NAMES()[Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->mSelectedPenIndex:I

    aget-object v1, v1, v4

    :goto_5
    if-ge v3, v2, :cond_7

    sget-object v4, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->getINFO_PEN_NAMES()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iput v3, v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->mSelectedPenIndex:I

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->mPenInfoList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public final getSelectedPenIndex()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->mSelectedPenIndex:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public final loadData()Ljava/util/Hashtable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "_spensettings_drawing_v5"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->TAG:Ljava/lang/String;

    const-string v1, "loadData(), mSharedPreferences is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "KEY_SETTING_PEN_INFO"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "buf.toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buf : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    const/4 v5, 0x2

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x3

    new-array v8, v8, [F

    move v9, v4

    :goto_1
    if-ge v9, v6, :cond_2

    sget-object v10, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->getINFO_PEN_COLORS()[I

    move-result-object v11

    aget v11, v11, v9

    invoke-static {v11, v8}, Lcom/samsung/android/support/senl/cm/base/framework/support/ColorCompat;->colorToHSV(I[F)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->getINFO_PEN_COLORS()[I

    move-result-object v12

    aget v12, v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "::true:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->getINFO_PEN_NAMES()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->getINFO_PEN_SIZES()[F

    move-result-object v10

    aget v10, v10, v9

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ":false:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v8, v4

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v10, v8, v3

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v10, v8, v5

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, ":"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/String;

    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->mSelectedPenIndex:I

    sget-object v2, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v2, v1, 0x6

    array-length v6, v0

    sub-int/2addr v6, v5

    if-ne v2, v6, :cond_4

    invoke-direct {p0, v4, v1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->makePenInfoList(ZI[Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    mul-int/lit8 v2, v1, 0x9

    array-length v4, v0

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_5

    invoke-direct {p0, v3, v1, v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->makePenInfoList(ZI[Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->mPenInfoList:Ljava/util/Hashtable;

    return-object v0
.end method
