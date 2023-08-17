.class public Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CLASS_NAME_COLLECT_SERVICE:Ljava/lang/String; = "com.samsung.android.support.senl.nt.model.collector.CollectService"

.field private static final COMMAND_CHECK_RECOGNITION_STATUS:Ljava/lang/String; = "Check recognition status"

.field private static final COMMAND_CLEAR_DATABASE:Ljava/lang/String; = "Clear database"

.field private static final COMMAND_CLEAR_MAPPED_TABLE:Ljava/lang/String; = "Clear mapped table"

.field private static final COMMAND_CLEAR_SYNC_DATA:Ljava/lang/String; = "Clear sync data"

.field private static final COMMAND_COPY_DOCS:Ljava/lang/String; = "Copy docs"

.field private static final COMMAND_COPY_LAST_DOC:Ljava/lang/String; = "Copy last doc"

.field private static final COMMAND_CORRUPT_LAST_MEMO_FOR_FAIL:Ljava/lang/String; = "Corrupt Last Memo For Fail"

.field private static final COMMAND_CORRUPT_LAST_MEMO_FOR_RECOVERY:Ljava/lang/String; = "Corrupt Last Memo For Recovery"

.field private static final COMMAND_CREATE_DUMMY_DB:Ljava/lang/String; = "Create dummy database"

.field private static final COMMAND_CREATE_TEST_FOLDERS:Ljava/lang/String; = "Create Test Folders"

.field private static final COMMAND_CUSTOM_ACTIONBAR:Ljava/lang/String; = "Custom Toolbar"

.field private static final COMMAND_DISABLE_APP_UPDATE:Ljava/lang/String; = "Disable App Update"

.field private static final COMMAND_DISABLE_CLEAR_INVALID_COEDIT_NOTE:Ljava/lang/String; = "Disable clear invalid coedit notes"

.field private static final COMMAND_DISABLE_COEDIT_DEBUG:Ljava/lang/String; = "Disable Coedit Debug"

.field private static final COMMAND_DISABLE_COLLECT:Ljava/lang/String; = "Disable Collect"

.field private static final COMMAND_DISABLE_STG_SERVER:Ljava/lang/String; = "Disable STG Server"

.field private static final COMMAND_DISABLE_SYNC_DEBUG:Ljava/lang/String; = "Disable Sync Debug"

.field private static final COMMAND_ENABLE_APP_UPDATE:Ljava/lang/String; = "Enable App Update"

.field private static final COMMAND_ENABLE_CLEAR_INVALID_COEDIT_NOTE:Ljava/lang/String; = "Enable clear invalid coedit notes"

.field private static final COMMAND_ENABLE_COEDIT_DEBUG:Ljava/lang/String; = "Enable Coedit Debug"

.field private static final COMMAND_ENABLE_COLLECT:Ljava/lang/String; = "Enable Collect"

.field private static final COMMAND_ENABLE_STG_SERVER:Ljava/lang/String; = "Enable STG Server"

.field private static final COMMAND_ENABLE_SYNC_DEBUG:Ljava/lang/String; = "Enable Sync Debug"

.field private static final COMMAND_EXPORT_ALL_DOCS:Ljava/lang/String; = "Copy docs to external sdcard"

.field private static final COMMAND_EXTRACT_TEXT_DATA:Ljava/lang/String; = "Extract text data for AI"

.field private static final COMMAND_IMPORT_DOCS:Ljava/lang/String; = "Import docs (sdocx, sdoc)"

.field private static final COMMAND_REARRANGE_DB:Ljava/lang/String; = "Re-arrange database"

.field private static final COMMAND_REARRANGE_FOLDER_DB:Ljava/lang/String; = "Re-arrange folder database"

.field private static final COMMAND_RESTORE_DATABASE:Ljava/lang/String; = "Restore database"

.field private static final COMMAND_START_CREATE_NOTE_BY_AIR_COMMAND:Ljava/lang/String; = "Start Create note by AirCommand"

.field private static final COMMAND_START_CREATE_NOTE_BY_DOUBLE_TAP:Ljava/lang/String; = "Start Create note by double tap"

.field private static final COMMAND_START_SCREEN_OFF_MEMO_BY_PEN_DETACH:Ljava/lang/String; = "Start ScreenOffMemo by pen detach"

.field private static final COMMAND_START_SCREEN_OFF_MEMO_BY_PEN_DOUBLE_TAP:Ljava/lang/String; = "Start ScreenOffMemo by pen double tap"

.field private static final COMMAND_STG_PROD_TOGGLE_COEDIT:Ljava/lang/String; = "Toggle Stg coedit"

.field private static final COMMAND_VALIDATION_TOGGLE_COEDIT:Ljava/lang/String; = "Toggle Validation coedit"

.field private static final ITEMS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LabsActivity"


# instance fields
.field private mDocumentTest:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

.field private final mResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/nt/app/labs/IActivityResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 35

    const-string v0, "Extract text data for AI"

    const-string v1, "Check recognition status"

    const-string v2, "Import docs (sdocx, sdoc)"

    const-string v3, "Toggle Stg coedit"

    const-string v4, "Toggle Validation coedit"

    const-string v5, "Copy docs"

    const-string v6, "Copy last doc"

    const-string v7, "Create Test Folders"

    const-string v8, "Copy docs to external sdcard"

    const-string v9, "Create dummy database"

    const-string v10, "Custom Toolbar"

    const-string v11, "Re-arrange database"

    const-string v12, "Re-arrange folder database"

    const-string v13, "Clear database"

    const-string v14, "Restore database"

    const-string v15, "Clear sync data"

    const-string v16, "Clear mapped table"

    const-string v17, "Enable Sync Debug"

    const-string v18, "Disable Sync Debug"

    const-string v19, "Enable Coedit Debug"

    const-string v20, "Disable Coedit Debug"

    const-string v21, "Enable STG Server"

    const-string v22, "Disable STG Server"

    const-string v23, "Corrupt Last Memo For Recovery"

    const-string v24, "Corrupt Last Memo For Fail"

    const-string v25, "Enable App Update"

    const-string v26, "Disable App Update"

    const-string v27, "Enable Collect"

    const-string v28, "Disable Collect"

    const-string v29, "Start ScreenOffMemo by pen detach"

    const-string v30, "Start ScreenOffMemo by pen double tap"

    const-string v31, "Start Create note by AirCommand"

    const-string v32, "Start Create note by double tap"

    const-string v33, "Enable clear invalid coedit notes"

    const-string v34, "Disable clear invalid coedit notes"

    filled-new-array/range {v0 .. v34}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->ITEMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->mDocumentTest:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->mResultMap:Ljava/util/Map;

    return-void
.end method

.method private createItem(Ljava/lang/String;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private disableCoeditFileLogging()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/deviceName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableCoeditFileLogging, isDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LabsActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private enableCoeditFileLogging()V
    .locals 4

    const-string v0, "LabsActivity"

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/deviceName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_3

    :try_start_1
    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/constructor/JavaInstanceConstructor;->createFileWriter(Ljava/io/File;)Ljava/io/FileWriter;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_9
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to write, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :catch_1
    const-string v1, "Fail to write device name file"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initialize()V
    .locals 8

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->item_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->ITEMS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const-string v5, "Copy docs"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_1

    const-string v5, "Copy last doc"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Create Test Folders"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Create dummy database"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->createItem(Ljava/lang/String;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup;

    move-result-object v4

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->createItem(Ljava/lang/String;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v7, 0x1020003

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setId(I)V

    const/16 v7, 0x50

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setGravity(I)V

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->connect(Landroid/content/Context;)V

    return-void
.end method

.method private setCollectEnabledSetting(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.support.senl.nt.model.collector.CollectService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private startPickerActivity(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->mDocumentTest:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;->setType(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->mDocumentTest:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;->pick(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->mResultMap:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->mDocumentTest:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->mResultMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/labs/IActivityResultListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/labs/IActivityResultListener;->onActivityResult(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "Copy docs"

    const/16 v3, 0xa

    const-string v4, "Create Test Folders"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "Copy last doc"

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "Start ScreenOffMemo by pen double tap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v9, 0x22

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "Enable Collect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v9, 0x21

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "Start ScreenOffMemo by pen detach"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v9, 0x20

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "Enable Coedit Debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v9, 0x1f

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "Enable STG Server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v9, 0x1e

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "Disable STG Server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v9, 0x1d

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "Clear mapped table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v9, 0x1c

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "Restore database"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v9, 0x1b

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "Custom Toolbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v9, 0x1a

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "Create dummy database"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v9, 0x19

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "Start Create note by double tap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v9, 0x18

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "Enable Sync Debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v9, 0x17

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "Toggle Stg coedit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v9, 0x16

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "Disable Sync Debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v9, 0x15

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "Enable App Update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v9, 0x14

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "Enable clear invalid coedit notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v9, 0x13

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "Copy docs to external sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v9, 0x12

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "Disable App Update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v9, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "Clear database"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v9, 0x10

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "Extract text data for AI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v9, 0xf

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "Import docs (sdocx, sdoc)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v9, 0xe

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v9, 0xd

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "Clear sync data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v9, 0xc

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "Re-arrange folder database"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v9, 0xb

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "Disable Collect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    move v9, v3

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v9, 0x9

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "Corrupt Last Memo For Fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v9, 0x8

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "Start Create note by AirCommand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v9, 0x7

    goto :goto_0

    :sswitch_1c
    const-string v1, "Check recognition status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v9, 0x6

    goto :goto_0

    :sswitch_1d
    const-string v1, "Disable Coedit Debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v9, 0x5

    goto :goto_0

    :sswitch_1e
    const-string v1, "Corrupt Last Memo For Recovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v9, 0x4

    goto :goto_0

    :sswitch_1f
    const-string v1, "Re-arrange database"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v9, 0x3

    goto :goto_0

    :sswitch_20
    const-string v1, "Toggle Validation coedit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_0

    :cond_20
    move v9, v5

    goto :goto_0

    :sswitch_21
    const-string v1, "Disable clear invalid coedit notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_0

    :cond_21
    move v9, v6

    goto :goto_0

    :sswitch_22
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_0

    :cond_22
    move v9, v8

    :goto_0
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-direct {p0, v6}, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->setCollectEnabledSetting(I)V

    goto/16 :goto_3

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/ScreenOffMemoTester;->getInstance()Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/ScreenOffMemoTester;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/screenoffmemo/ScreenOffMemoTester;->execute(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->enableCoeditFileLogging()V

    goto/16 :goto_3

    :pswitch_3
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->useStagingServer()V

    goto/16 :goto_3

    :pswitch_4
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->useProdServer()V

    goto/16 :goto_3

    :pswitch_5
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->clearMappedTable()V

    goto/16 :goto_3

    :pswitch_6
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->execute()Z

    goto/16 :goto_3

    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/FragmentToolBarActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x18000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    :pswitch_8
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->enableSyncDebug()V

    goto/16 :goto_3

    :pswitch_9
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->toogleStgServer()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IS_STG_SERVER "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_STG_SERVER:Z

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_3

    :pswitch_a
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->disableSyncDebug()V

    goto/16 :goto_3

    :pswitch_b
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->enableAppUpdate()V

    goto/16 :goto_3

    :pswitch_c
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->enableInvalidCoEditNotes()V

    goto/16 :goto_3

    :pswitch_d
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NotesTestFolder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->setDestFolder(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SpenDocumentTester;->copyToSdcard()V

    goto/16 :goto_3

    :pswitch_e
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->disableAppUpdate()V

    goto/16 :goto_3

    :pswitch_f
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;->clear(Landroid/content/Context;)V

    goto/16 :goto_3

    :pswitch_10
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;->extractTexts()V

    goto/16 :goto_3

    :pswitch_11
    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->startPickerActivity(I)V

    goto/16 :goto_3

    :pswitch_12
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->clearAllData()V

    goto/16 :goto_3

    :pswitch_13
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/FolderArrangeManager;->arrangeFolders()V

    goto/16 :goto_3

    :pswitch_14
    invoke-direct {p0, v5}, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->setCollectEnabledSetting(I)V

    goto/16 :goto_3

    :pswitch_15
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "end_tag"

    goto :goto_2

    :pswitch_16
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;->getInstance()Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/createnote/CreateNoteTester;->execute(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_17
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/labs/collect/CollectStatus;->checkCollectStatus(Landroid/content/Context;)V

    goto/16 :goto_3

    :pswitch_18
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->disableCoeditFileLogging()V

    goto/16 :goto_3

    :pswitch_19
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "@attach"

    :goto_2
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;->corruptLastMemo(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1a
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;->arrange(Landroid/content/Context;)V

    goto/16 :goto_3

    :pswitch_1b
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->toogleValidation()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IS_VALIDATION "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_VALIDATION:Z

    goto/16 :goto_1

    :pswitch_1c
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->disableInvalidCoEditNotes()V

    goto :goto_3

    :pswitch_1d
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v1, 0x1020003

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;->importData(Landroid/app/Activity;I)V

    goto :goto_3

    :cond_23
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;->importLastData(Landroid/app/Activity;I)V

    goto :goto_3

    :cond_24
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/labs/FolderTest;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/labs/FolderTest;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/FolderTest;->createData(Landroid/app/Activity;I)V

    goto :goto_3

    :cond_25
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;->createDummy(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMMAND_COPY_DOCS, e : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LabsActivity"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7170a327 -> :sswitch_22
        -0x6f702595 -> :sswitch_21
        -0x6e5a8fcf -> :sswitch_20
        -0x69154457 -> :sswitch_1f
        -0x67ffc105 -> :sswitch_1e
        -0x645e637f -> :sswitch_1d
        -0x5fe7094d -> :sswitch_1c
        -0x5cb5b25e -> :sswitch_1b
        -0x584ac67c -> :sswitch_1a
        -0x4cb10345 -> :sswitch_19
        -0x4916f84e -> :sswitch_18
        -0x3db6e901 -> :sswitch_17
        -0x3cfffc24 -> :sswitch_16
        -0x324e1c1a -> :sswitch_15
        -0x2ea32565 -> :sswitch_14
        -0x1e3ab87f -> :sswitch_13
        -0x140431f2 -> :sswitch_12
        -0xbc8f7c0 -> :sswitch_11
        -0x8864a55 -> :sswitch_10
        -0x727ed50 -> :sswitch_f
        -0x245957b -> :sswitch_e
        0x36ba0e6 -> :sswitch_d
        0xce113fc -> :sswitch_c
        0xcef032b -> :sswitch_b
        0x1cc211b5 -> :sswitch_a
        0x2b010977 -> :sswitch_9
        0x33c115cc -> :sswitch_8
        0x365962ed -> :sswitch_7
        0x3bfa96b4 -> :sswitch_6
        0x42d69f15 -> :sswitch_5
        0x4c5a015a -> :sswitch_4
        0x51d58186 -> :sswitch_3
        0x63f01342 -> :sswitch_2
        0x6ce1538d -> :sswitch_1
        0x72060303 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_1d
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1d
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_16
        :pswitch_1d
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$layout;->labs_activity:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->initialize()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->mDocumentTest:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;->mResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
