.class public Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static COMPOSER_ACTIVITY_CLASS:Ljava/lang/Class; = null

.field private static COMPOSER_PDF_READER_CLASS:Ljava/lang/Class; = null

.field private static CREATE_NOTE_CLASS:Ljava/lang/Class; = null

.field private static NATIVE_COMPOSER_ACTION_NEW_ACTIVITY_CLASS:Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "ComposerAccessHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComposerActivityClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->COMPOSER_ACTIVITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getComposerPdfReaderClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->COMPOSER_PDF_READER_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getCreateNoteActivityClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->CREATE_NOTE_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getNativeComposerActionNewActivityClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->NATIVE_COMPOSER_ACTION_NEW_ACTIVITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static setComposerActivityClass(Ljava/lang/Class;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->COMPOSER_ACTIVITY_CLASS:Ljava/lang/Class;

    const-string v1, "ComposerAccessHandler"

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->COMPOSER_ACTIVITY_CLASS:Ljava/lang/Class;

    const-string p0, "setComposerActivityClass. "

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "setComposerActivityClass, twice access! only first trial is accepted"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setCreateNoteActivityClass(Ljava/lang/Class;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->CREATE_NOTE_CLASS:Ljava/lang/Class;

    const-string v1, "ComposerAccessHandler"

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->CREATE_NOTE_CLASS:Ljava/lang/Class;

    const-string p0, "setCreateNoteActivityClass. "

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "setCreateNoteActivityClass, twice access! only first trial is accepted"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setNativeComposerActionNewActivityClass(Ljava/lang/Class;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->NATIVE_COMPOSER_ACTION_NEW_ACTIVITY_CLASS:Ljava/lang/Class;

    const-string v1, "ComposerAccessHandler"

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->NATIVE_COMPOSER_ACTION_NEW_ACTIVITY_CLASS:Ljava/lang/Class;

    const-string p0, "setNativeComposerActionNewActivityClass. "

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "setNativeComposerActionNewActivityClass, twice access! only first trial is accepted"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setPdfReaderActivityClass(Ljava/lang/Class;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->COMPOSER_PDF_READER_CLASS:Ljava/lang/Class;

    const-string v1, "ComposerAccessHandler"

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->COMPOSER_PDF_READER_CLASS:Ljava/lang/Class;

    const-string p0, "setPdfReaderActivityClass. "

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "setPdfReaderActivityClass, twice access! only first trial is accepted"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
