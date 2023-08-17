.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$CoeditInvitation;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$Coedit;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$CoeditSpace;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$HashTag;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$SortBar;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$SubHeader;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$Note;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$Folder;
    }
.end annotation


# instance fields
.field public coeditNotes:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

.field public folders:[Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

.field public id:J

.field public invitation:Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;

.field public isPinToFavorites:Z

.field public notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

.field public orderType:I

.field public selectedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sortType:I

.field public space:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;

.field public final type:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->id:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->sortType:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->orderType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->isPinToFavorites:Z

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    return-void
.end method
