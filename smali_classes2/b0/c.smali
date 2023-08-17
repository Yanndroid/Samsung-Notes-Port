.class public interface abstract Lb0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract deleteTag(Landroid/content/Context;Ljava/lang/String;JIZ)V
.end method

.method public abstract deleteTagSync(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract getDirtyCountOfNoteTag(Landroid/content/Context;)I
.end method

.method public abstract getNoteTagDeleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getNoteTagExtraInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNoteTagModifiedTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract getNoteTagServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public abstract getNoteTagServerTimestamp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract getNoteTagUUIDList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSDocUUIDListByTag(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSDocUuidAndNoteTagTimeList(Landroid/content/Context;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagDeleted(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method public abstract getTagExtraInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTagLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public abstract getTagName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTagServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public abstract getTagUUID(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getTagUUIDList(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagUUIDListByDeleted(Landroid/content/Context;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isExistTag(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract recoveryTag(Landroid/content/Context;Ljava/lang/String;JI)V
.end method

.method public abstract setNoteTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setNoteTagContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;I)I
.end method

.method public abstract setNoteTagContentList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract setNoteTagDirty(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract setTagDirty(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract setTagModifiedAndServerTimestampAndExtraInfo(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V
.end method

.method public abstract setTagServerTimestamp(Landroid/content/Context;Ljava/lang/String;J)V
.end method

.method public abstract synchronizeTag()Ljava/lang/Object;
.end method

.method public abstract updateTagName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
.end method
