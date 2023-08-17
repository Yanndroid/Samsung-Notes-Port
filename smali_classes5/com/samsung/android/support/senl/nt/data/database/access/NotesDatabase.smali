.class public abstract Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesContentEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncServerOnlyNodeEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/account/entity/NotesAccountEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesAutoTagEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentTextSearchEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;,
        Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSpaceInfoEntity;
    }
    version = 0x38
    views = {
        Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryDocumentCountEntry;
    }
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Lcom/samsung/android/support/senl/nt/data/database/core/converter/NotesDataConverter;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "sdoc.db"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract categoryTreeClosureDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;
.end method

.method public abstract notesAccountDAO()Lcom/samsung/android/support/senl/nt/data/database/core/account/dao/NotesAccountDAO;
.end method

.method public abstract notesAutoTagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesAutoTagDAO;
.end method

.method public abstract notesConvertedDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesConvertedDocumentDAO;
.end method

.method public abstract notesDebugDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;
.end method

.method public abstract notesDocumentPageDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentPageDAO;
.end method

.method public abstract notesHashtagContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;
.end method

.method public abstract notesHashtagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagDAO;
.end method

.method public abstract notesLockDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;
.end method

.method public abstract notesMainListDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMainListDAO;
.end method

.method public abstract notesMappedDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;
.end method

.method public abstract notesOldDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;
.end method

.method public abstract notesPageSearchInfoDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesPageSearchInfoDAO;
.end method

.method public abstract notesRecycleBinDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;
.end method

.method public abstract notesRestoreDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;
.end method

.method public abstract notesRetryDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRetryDAO;
.end method

.method public abstract notesSearchDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesSearchDAO;
.end method

.method public abstract notesStrokeDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesStrokeDAO;
.end method

.method public abstract notesTagDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTagDAO;
.end method

.method public abstract notesTemplateDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesTemplateDAO;
.end method

.method public abstract sdocCategoryTreeDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;
.end method

.method public abstract sdocContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesContentDAO;
.end method

.method public abstract sdocDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;
.end method

.method public abstract shareSpaceInfoDao()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao;
.end method

.method public abstract syncCategoryTreeDao()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncCategoryTreeDao;
.end method

.method public abstract syncDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncDocumentDAO;
.end method

.method public abstract syncInfoDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;
.end method

.method public abstract syncMdeDao()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncMdeDao;
.end method

.method public abstract syncNotesContentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO;
.end method
