.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mNoteInfoArgument:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "NoteInfoManager"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object v0
.end method

.method public getNoteInfoArgument()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->mNoteInfoArgument:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    return-object v0
.end method

.method public setNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-void
.end method

.method public setNoteInfoArgument(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->mNoteInfoArgument:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    return-void
.end method
