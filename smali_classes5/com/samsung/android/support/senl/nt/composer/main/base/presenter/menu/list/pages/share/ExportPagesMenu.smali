.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/ExportPagesMenu;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ExportPagesPopupMenu"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/ExportPagesMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$OptionMenuListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/SharePagesMenu$OptionMenuListener;)V

    return-void
.end method


# virtual methods
.method public executeShareSaveNote(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V
    .locals 0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;->executeSaveDirectoryPicker()V

    return-void
.end method

.method public getSALogEventId()Ljava/lang/String;
    .locals 1

    const-string v0, "7422"

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/share/ExportPagesMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_save_as_file_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
