.class public Lt0/a;
.super Lt0/h;
.source "SourceFile"


# instance fields
.field public d:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

.field public e:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 0

    invoke-direct {p0}, Lt0/h;-><init>()V

    iput-object p2, p0, Lt0/a;->d:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    iput-object p1, p0, Lt0/a;->e:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lt0/h;->c:Lc0/a;

    iget-object v1, p0, Lt0/a;->e:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iget-object v2, p0, Lt0/a;->d:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lc0/a;->launchImportNotification(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    return-void
.end method
