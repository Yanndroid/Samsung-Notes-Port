.class public final Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingPopupInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B!\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\n\u0010\r\u001a\u0004\u0018\u00010\u0008H\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopup;",
        "isShow",
        "",
        "type",
        "",
        "(ZI)V",
        "data",
        "",
        "(ZILjava/lang/Object;)V",
        "mData",
        "mIsShow",
        "mType",
        "getData",
        "getType",
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


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsShow:Z

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;->mIsShow:Z

    iput p2, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;->mType:I

    return-void
.end method

.method public synthetic constructor <init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;->mIsShow:Z

    iput p2, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;->mType:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;->mData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;->mType:I

    return v0
.end method

.method public isShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/SettingPopupBuilder$SettingPopupInfo;->mIsShow:Z

    return v0
.end method
