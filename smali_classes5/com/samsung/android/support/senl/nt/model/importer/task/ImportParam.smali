.class public Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;
    }
.end annotation


# instance fields
.field private mCaller:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mExternalPath:Ljava/lang/String;

.field private mFolderUuid:Ljava/lang/String;

.field private mIsCoeditNote:Z

.field private mUuid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo4/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->mCaller:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->mExternalPath:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->mFolderUuid:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->mIsCoeditNote:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->mUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCaller()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExternalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->mExternalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->mFolderUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isCoeditNote()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->mIsCoeditNote:Z

    return v0
.end method
