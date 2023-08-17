.class public Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportParamBuilder"
.end annotation


# instance fields
.field private final mImportParam:Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;-><init>(Lo4/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->mImportParam:Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->mImportParam:Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;

    return-object v0
.end method

.method public setCaller(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->mImportParam:Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->a(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->mImportParam:Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->b(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;Landroid/content/Context;)V

    return-object p0
.end method

.method public setExternalPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->mImportParam:Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->c(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFolderUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->mImportParam:Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->d(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIsCoeditNote(Z)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->mImportParam:Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->e(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;Z)V

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam$ImportParamBuilder;->mImportParam:Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;->f(Lcom/samsung/android/support/senl/nt/model/importer/task/ImportParam;Ljava/lang/String;)V

    return-object p0
.end method
