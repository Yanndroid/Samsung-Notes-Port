.class public final synthetic Ll4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;

.field public final synthetic b:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll4/a;->a:Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;

    iput-object p2, p0, Ll4/a;->b:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    iput-object p3, p0, Ll4/a;->c:Ljava/lang/String;

    iput-boolean p4, p0, Ll4/a;->d:Z

    iput-object p5, p0, Ll4/a;->e:Ljava/lang/String;

    iput-boolean p6, p0, Ll4/a;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ll4/a;->a:Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;

    iget-object v1, p0, Ll4/a;->b:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    iget-object v2, p0, Ll4/a;->c:Ljava/lang/String;

    iget-boolean v3, p0, Ll4/a;->d:Z

    iget-object v4, p0, Ll4/a;->e:Ljava/lang/String;

    iget-boolean v5, p0, Ll4/a;->f:Z

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;->a(Lcom/samsung/android/support/senl/nt/data/resolver/lock/encryption/SDocEncryptionHelper;Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method
