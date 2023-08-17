.class public Lcom/samsung/android/support/senl/nt/base/common/access/oldnote/OldNoteAccessHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static OLD_CATEGORY_LIST_CLASS:Ljava/lang/Class; = null

.field private static OLD_NOTES_CLASS:Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "OldNoteAccessHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOldCategoryListClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/oldnote/OldNoteAccessHandler;->OLD_CATEGORY_LIST_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getOldNotesClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/oldnote/OldNoteAccessHandler;->OLD_NOTES_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static setOldCategoryListClass(Ljava/lang/Class;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/oldnote/OldNoteAccessHandler;->OLD_CATEGORY_LIST_CLASS:Ljava/lang/Class;

    const-string v1, "OldNoteAccessHandler"

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/oldnote/OldNoteAccessHandler;->OLD_CATEGORY_LIST_CLASS:Ljava/lang/Class;

    const-string p0, "setOldCategoryListClass. "

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "setOldCategoryListClass, twice access! only first trial is accepted"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setOldNotesClass(Ljava/lang/Class;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/oldnote/OldNoteAccessHandler;->OLD_NOTES_CLASS:Ljava/lang/Class;

    const-string v1, "OldNoteAccessHandler"

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/oldnote/OldNoteAccessHandler;->OLD_NOTES_CLASS:Ljava/lang/Class;

    const-string p0, "setOldNotesClass. "

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "setOldNotesClass, twice access! only first trial is accepted"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
