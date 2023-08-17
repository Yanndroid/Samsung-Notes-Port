.class public interface abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract closeSpenNoteDoc()Z
.end method

.method public abstract createSpenNoteDoc(Ljava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getBackgroundImageMode()I
.end method

.method public abstract getBackgroundImagePathPage()Ljava/lang/String;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getNoteDoc()Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
.end method

.method public abstract getObjectCountInPage()I
.end method

.method public abstract getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method public abstract getPageCount()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVoiceMemoTable()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVoicePathMap()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidth()I
.end method

.method public abstract isValid()Z
.end method

.method public abstract release()V
.end method
