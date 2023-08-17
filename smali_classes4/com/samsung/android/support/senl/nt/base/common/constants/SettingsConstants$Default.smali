.class public interface abstract Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$Default;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Default"
.end annotation


# static fields
.field public static final SETTINGS_ACTION_ICONS:Z = true

.field public static final SETTINGS_ADD_ONS_ASSISTANCE:Z = true

.field public static final SETTINGS_ADD_ONS_AUTO_FIX_SHAPES:Z = true

.field public static final SETTINGS_ADD_ONS_CONVERT_TO_TEXT:Z = true

.field public static final SETTINGS_ADD_ONS_EASY_WRITING_PAD:Z = true

.field public static final SETTINGS_ADD_ONS_LOCK_CANVAS:Z = true

.field public static final SETTINGS_ADD_ONS_PEN_STYLE:Z = true

.field public static final SETTINGS_ADD_ONS_SPEN_TO_TEXT:Z = true

.field public static final SETTINGS_ADD_ONS_STRAIGHTEN:Z = true

.field public static final SETTINGS_ANCHOR_TO_TEXT_ENABLED:Z = true

.field public static final SETTINGS_AUTO_SAVE_NOTES:Z = true

.field public static final SETTINGS_BLOCK_BACK_KEY_WHILE_EDITING:Z = false

.field public static final SETTINGS_CLIPPING_OPTIONS:Z = true

.field public static final SETTINGS_CREATE_BUTTON:I = 0x1

.field public static final SETTINGS_DARK_MODE_NOTE:I = 0x0

.field public static final SETTINGS_DARK_MODE_NOTE_SET_EACH_NOTE_INDIVIDUALLY_INFO:Ljava/lang/String; = "dark_mode"

.field public static final SETTINGS_EXPORT_OPTION:I = 0x0

.field public static final SETTINGS_HIDE_SCROLL_BAR_WHEN_EDITING:Z = false

.field public static final SETTINGS_LOOK_OF_SAVED_SCREEN_OFF_MEMO:I = 0x0

.field public static final SETTINGS_PAGE_COLOR_ADJUST_IN_DARK_MODE:Z = true

.field public static final SETTINGS_PAGE_LAYOUT_COLUMN:I = 0x1

.field public static final SETTINGS_PAGE_SCROLL_DIRECTION:Z = true

.field public static final SETTINGS_PAGE_SIZE:I = 0x0

.field public static final SETTINGS_PAGE_TEMPLATE:Ljava/lang/String;

.field public static final SETTINGS_SHOW_LINKS_IN_NOTES:Z = true

.field public static final SETTINGS_SHOW_WEB_PREVIEWS:Z = false

.field public static final SETTINGS_SPEN_ONLY_MODE:Z = true

.field public static final SETTINGS_TEMPLATE_TYPE:I = 0x1

.field public static final SETTINGS_USE_PHONE_AS_TOOLBAR:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$Default;->SETTINGS_PAGE_TEMPLATE:Ljava/lang/String;

    return-void
.end method
