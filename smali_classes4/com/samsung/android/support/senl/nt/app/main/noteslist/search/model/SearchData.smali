.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mSavedSearchQuery:Ljava/lang/String;

.field private mSavedText:Ljava/lang/String;

.field private mSkipQuery:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->mSavedSearchQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->mSavedText:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->mSkipQuery:Z

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSavedSearchQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->mSavedSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->mSavedText:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipQuery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->mSkipQuery:Z

    return v0
.end method

.method public setComponentName(Landroid/content/ComponentName;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setSavedSearchQuery(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->mSavedSearchQuery:Ljava/lang/String;

    return-object p0
.end method

.method public setSavedText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->mSavedText:Ljava/lang/String;

    return-object p0
.end method

.method public setSkipQuery(Z)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/model/SearchData;->mSkipQuery:Z

    return-object p0
.end method
