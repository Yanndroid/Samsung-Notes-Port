.class public interface abstract Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract$IAdapter;
    }
.end annotation


# static fields
.field public static final CUSTOM_TOOLBAR_ORDER:[Ljava/lang/String;

.field public static final EMPTY_ITEM:Ljava/lang/String; = "EmptyItem"

.field public static final EMPTY_SPACE:Ljava/lang/String; = "EmptySpace"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;->QuickColor:Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;->QuickSize:Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;->Undo:Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;->Redo:Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;->Assistance:Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;->DirectWrite:Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;->Align:Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;->ConvertText:Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;->Style:Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;->EasyWritePad:Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;->Shape:Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;->LockCanvas:Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$ToolbarItemOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;->CUSTOM_TOOLBAR_ORDER:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract clearEmptyItemView()V
.end method

.method public abstract getToolbarItemOrder()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEmptyExist()Z
.end method

.method public abstract onDetachView()V
.end method

.method public abstract reset(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
