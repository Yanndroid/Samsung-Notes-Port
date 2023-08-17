.class public final Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\r\u001a\u00020\u000eJ*\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J*\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005R\u001c\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;",
        "",
        "()V",
        "mConvertPenData",
        "Ljava/util/Hashtable;",
        "",
        "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
        "clearPrevPreference",
        "",
        "getPenInfo",
        "penName",
        "getPrevSelectedPenName",
        "getSelectedPenName",
        "isExistPrevPreference",
        "",
        "loadPenModel",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;",
        "i",
        "",
        "brushCanvasModel",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;",
        "screenModel",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "saveCurrentPenName",
        "savePenInfo",
        "penModel",
        "Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;",
        "savePrevPenName",
        "prevPenName",
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
.field private static final BRUSH_V6:Ljava/lang/String; = "_brush_v6"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COLOR:Ljava/lang/String; = "_COLOR"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CURRENT_PEN_NAME:Ljava/lang/String; = "CURRENT_PEN_NAME"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DRAWING_V5:Ljava/lang/String; = "_spensettings_drawing_v5"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_SETTING_PEN_INFO:Ljava/lang/String; = "KEY_SETTING_PEN_INFO"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NAME:Ljava/lang/String; = "_NAME"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final POSITION:Ljava/lang/String; = "_POSITION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREVIOUS_PEN_NAME:Ljava/lang/String; = "PREVIOUS_PEN_NAME"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SIZE:Ljava/lang/String; = "_SIZE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SMUDGE_PEN_COLOR:I = -0x89898a

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mConvertPenData:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;

    const-string v0, "PenInfoManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;-><init>()V

    return-void
.end method

.method private final getPenInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->mConvertPenData:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final clearPrevPreference()V
    .locals 3

    const-string v0, "_spensettings_drawing_v5"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "KEY_SETTING_PEN_INFO"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->clearPreference(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getPrevSelectedPenName()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_NAMES()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "_brush_v6"

    const-string v2, "PREVIOUS_PEN_NAME"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected prev pen name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSelectedPenName()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/IPenModelList$Companion;->getPEN_NAMES()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "_brush_v6"

    const-string v2, "CURRENT_PEN_NAME"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected pen name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isExistPrevPreference()Z
    .locals 2

    const-string v0, "_spensettings_drawing_v5"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KEY_SETTING_PEN_INFO"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/BrushSettingViewInforManager;->loadData()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->mConvertPenData:Ljava/util/Hashtable;

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "isExistPrevPreference. DRAWING_V5"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "isExistPrevPreference. BRUSH_V6"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final loadPenModel(ILjava/lang/String;Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "penName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->getPenInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    new-instance v8, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->getINFO_PEN_SIZES()[F

    move-result-object v3

    aget v3, v3, p1

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x1

    iget v4, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    const/high16 v5, -0x100000

    move-object v0, v8

    move-object v1, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;-><init>(Ljava/lang/String;IIFILcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->getINFO_PEN_COLORS()[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->getINFO_PEN_SIZES()[F

    move-result-object v0

    aget v0, v0, p1

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x100000

    move-object v0, v8

    move-object v1, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;-><init>(Ljava/lang/String;IIFILcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V

    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPen. name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/addons/base/model/pen/AbsPenModel;->getPenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;->getAlphaColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/addons/base/model/pen/AbsPenModel;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", position:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public final loadPenModel(Ljava/lang/String;ILcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "penName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Smudge"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const-string v1, "_brush_v6"

    if-eqz v0, :cond_0

    const v0, -0x89898a

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_COLOR"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->getINFO_PEN_COLORS()[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    move v4, v0

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_SIZE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenDefaultInfo;->getINFO_PEN_SIZES()[F

    move-result-object v3

    aget p2, v3, p2

    float-to-int p2, p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {v1, v2, p2}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_POSITION"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/high16 v2, -0x100000

    invoke-static {v1, p2, v2}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move-object v2, v0

    move-object v3, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;-><init>(Ljava/lang/String;IIILcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasModel;Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "loadPen. name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/AbsPenModel;->getPenName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " , color: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenModel;->getAlphaColor()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " , size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/AbsPenModel;->getSize()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", position:  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/AbsBaseColorModel;->getPosition()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final saveCurrentPenName(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "_brush_v6"

    const-string v1, "CURRENT_PEN_NAME"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final savePenInfo(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)V
    .locals 5
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "Smudge"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x89898a

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getAlphaColor()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_brush_v6"

    invoke-static {v3, v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_COLOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_SIZE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getSize()I

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_POSITION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v2

    invoke-static {v3, v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPen. name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , size: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getSize()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", position:  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final savePrevPenName(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "_brush_v6"

    const-string v1, "PREVIOUS_PEN_NAME"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
