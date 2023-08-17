.class public Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public existEditingNote:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "false"

    iput-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;->existEditingNote:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExistEditingNote()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;->existEditingNote:Ljava/lang/String;

    return-object v0
.end method

.method public setExistEditingNote(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;->existEditingNote:Ljava/lang/String;

    return-void
.end method
