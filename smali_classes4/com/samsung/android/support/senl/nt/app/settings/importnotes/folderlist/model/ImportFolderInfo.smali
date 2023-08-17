.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mDisplayPath:Ljava/lang/String;

.field private final mFolderPath:Ljava/lang/String;

.field private mIsChecked:Z

.field private final mItem:Ld1/d;

.field private final mModifiedTime:J

.field private final mName:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(ILd1/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ld1/d;->C()J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p3

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ld1/d;J)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ld1/d;J)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ld1/d;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mType:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mDisplayPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mFolderPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mItem:Ld1/d;

    iput-wide p6, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mModifiedTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mIsChecked:Z

    return-void
.end method


# virtual methods
.method public getDisplayPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mDisplayPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mIsChecked:Z

    return v0
.end method

.method public getItem()Ld1/d;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mItem:Ld1/d;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mModifiedTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mType:I

    return v0
.end method

.method public setIsChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->mIsChecked:Z

    return-void
.end method
