.class public Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static COEDIT_LAUNCH_SOCIAL_PICKER_CLASS:Ljava/lang/Class; = null

.field private static COEDIT_SPACE_PICKER_CLASS:Ljava/lang/Class; = null

.field private static COMP_NOTELIST_FRAGMENT_CLASS:Ljava/lang/Class; = null

.field private static LIVE_SHARING_CLASS:Ljava/lang/Class; = null

.field private static NOTELIST_BASE_CLASS:Ljava/lang/Class; = null

.field private static NOTELIST_CLASS:Ljava/lang/Class; = null

.field private static NOTELIST_MULTI_INSTANCE_CLASS:Ljava/lang/Class; = null

.field private static NOTEPICKER_CLASS:Ljava/lang/Class; = null

.field private static SETTINGS_DETAIL_CLASS:Ljava/lang/Class; = null

.field private static SETTINGS_MAIN_CLASS:Ljava/lang/Class; = null

.field private static SHARED_INVITATION_LIST_CLASS:Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "MemoListAccessHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCompNoteListFragment()Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->COMP_NOTELIST_FRAGMENT_CLASS:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemoListAccessHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCoeditSpacePickerClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->COEDIT_SPACE_PICKER_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getLiveSharingActivityClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->LIVE_SHARING_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getNoteListBaseActivityClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->NOTELIST_BASE_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getNoteListClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->NOTELIST_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getNoteListMultiInstanceClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->NOTELIST_MULTI_INSTANCE_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getNotePickerClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->NOTEPICKER_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getSettingsDetailActivity()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->SETTINGS_DETAIL_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getSettingsMainActivity()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->SETTINGS_MAIN_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getSharedInvitationListClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->SHARED_INVITATION_LIST_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getSocialPickerClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->COEDIT_LAUNCH_SOCIAL_PICKER_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static setCoeditSpacePickerClass(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->COEDIT_SPACE_PICKER_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->COEDIT_SPACE_PICKER_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "MemoListAccessHandler"

    const-string v0, "setCoeditSpacePickerClass, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setCompNoteListFragmentClass(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->COMP_NOTELIST_FRAGMENT_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->COMP_NOTELIST_FRAGMENT_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "MemoListAccessHandler"

    const-string v0, "set Note List Fragment Class, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setLiveSharingActivityClass(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->LIVE_SHARING_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->LIVE_SHARING_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "MemoListAccessHandler"

    const-string v0, "setLiveSharingActivityClass, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setNoteListBaseActivityClass(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->NOTELIST_BASE_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->NOTELIST_BASE_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "MemoListAccessHandler"

    const-string v0, "setNoteListBaseActivityClass, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setNoteListClass(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->NOTELIST_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->NOTELIST_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "MemoListAccessHandler"

    const-string v0, "setNoteListClass, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setNoteListMultiInstanceClass(Ljava/lang/Class;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->NOTELIST_MULTI_INSTANCE_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public static setNotePickerClass(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->NOTEPICKER_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->NOTEPICKER_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "MemoListAccessHandler"

    const-string v0, "setNotePickerClass, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setSettingsDetailActivity(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->SETTINGS_DETAIL_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->SETTINGS_DETAIL_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "MemoListAccessHandler"

    const-string v0, "setSettingsDetailClass, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setSettingsMainActivity(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->SETTINGS_MAIN_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->SETTINGS_MAIN_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "MemoListAccessHandler"

    const-string v0, "setSettingsMainActivity, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setSharedInvitationListClass(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->SHARED_INVITATION_LIST_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->SHARED_INVITATION_LIST_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "MemoListAccessHandler"

    const-string v0, "setSharedInvitationListClass, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setSocialPickerClass(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->COEDIT_LAUNCH_SOCIAL_PICKER_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->COEDIT_LAUNCH_SOCIAL_PICKER_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "MemoListAccessHandler"

    const-string v0, "setSocialPickerClass, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
