.class public Lorg/apache/poi/java/awt/TextArea;
.super Lorg/apache/poi/java/awt/TextComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/TextArea$AccessibleAWTTextArea;
    }
.end annotation


# static fields
.field public static final SCROLLBARS_BOTH:I = 0x0

.field public static final SCROLLBARS_HORIZONTAL_ONLY:I = 0x2

.field public static final SCROLLBARS_NONE:I = 0x3

.field public static final SCROLLBARS_VERTICAL_ONLY:I = 0x1

.field private static backwardTraversalKeys:Ljava/util/Set; = null

.field private static final base:Ljava/lang/String; = "text"

.field private static forwardTraversalKeys:Ljava/util/Set; = null

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = 0x333db1de0443fe6aL


# instance fields
.field public columns:I

.field public rows:I

.field private scrollbarVisibility:I

.field private textAreaSerializedDataVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/TextArea;->initIDs()V

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "ctrl TAB"

    invoke-static {v1, v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->initFocusTraversalKeysSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/TextArea;->forwardTraversalKeys:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "ctrl shift TAB"

    invoke-static {v1, v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->initFocusTraversalKeysSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/TextArea;->backwardTraversalKeys:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lorg/apache/poi/java/awt/TextArea;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/poi/java/awt/TextArea;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lorg/apache/poi/java/awt/TextArea;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/java/awt/TextArea;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/TextComponent;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    iput p1, p0, Lorg/apache/poi/java/awt/TextArea;->textAreaSerializedDataVersion:I

    const/4 p1, 0x0

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput p2, p0, Lorg/apache/poi/java/awt/TextArea;->rows:I

    if-ltz p3, :cond_1

    goto :goto_1

    :cond_1
    move p3, p1

    :goto_1
    iput p3, p0, Lorg/apache/poi/java/awt/TextArea;->columns:I

    if-ltz p4, :cond_2

    const/4 p2, 0x3

    if-gt p4, p2, :cond_2

    iput p4, p0, Lorg/apache/poi/java/awt/TextArea;->scrollbarVisibility:I

    goto :goto_2

    :cond_2
    iput p1, p0, Lorg/apache/poi/java/awt/TextArea;->scrollbarVisibility:I

    :goto_2
    sget-object p2, Lorg/apache/poi/java/awt/TextArea;->forwardTraversalKeys:Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->setFocusTraversalKeys(ILjava/util/Set;)V

    const/4 p1, 0x1

    sget-object p2, Lorg/apache/poi/java/awt/TextArea;->backwardTraversalKeys:Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->setFocusTraversalKeys(ILjava/util/Set;)V

    return-void
.end method

.method private static native initIDs()V
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget p1, p0, Lorg/apache/poi/java/awt/TextArea;->columns:I

    const/4 v0, 0x0

    if-gez p1, :cond_0

    iput v0, p0, Lorg/apache/poi/java/awt/TextArea;->columns:I

    :cond_0
    iget p1, p0, Lorg/apache/poi/java/awt/TextArea;->rows:I

    if-gez p1, :cond_1

    iput v0, p0, Lorg/apache/poi/java/awt/TextArea;->rows:I

    :cond_1
    iget p1, p0, Lorg/apache/poi/java/awt/TextArea;->scrollbarVisibility:I

    if-ltz p1, :cond_2

    const/4 v1, 0x3

    if-le p1, v1, :cond_3

    :cond_2
    iput v0, p0, Lorg/apache/poi/java/awt/TextArea;->scrollbarVisibility:I

    :cond_3
    iget p1, p0, Lorg/apache/poi/java/awt/TextArea;->textAreaSerializedDataVersion:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_4

    sget-object p1, Lorg/apache/poi/java/awt/TextArea;->forwardTraversalKeys:Ljava/util/Set;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/java/awt/Component;->setFocusTraversalKeys(ILjava/util/Set;)V

    const/4 p1, 0x1

    sget-object v0, Lorg/apache/poi/java/awt/TextArea;->backwardTraversalKeys:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Component;->setFocusTraversalKeys(ILjava/util/Set;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public addNotify()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createTextArea(Lorg/apache/poi/java/awt/TextArea;)Lorg/apache/poi/java/awt/peer/TextAreaPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/TextComponent;->addNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public append(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/TextArea;->appendText(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized appendText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextComponent;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/TextArea;->insertText(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/TextArea;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/TextArea;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/TextArea;->nameCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/TextArea$AccessibleAWTTextArea;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/TextArea$AccessibleAWTTextArea;-><init>(Lorg/apache/poi/java/awt/TextArea;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getColumns()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/TextArea;->columns:I

    return v0
.end method

.method public getMinimumSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextArea;->minimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumSize(II)Lorg/apache/poi/java/awt/Dimension;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/TextArea;->minimumSize(II)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getPreferredSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/TextArea;->preferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredSize(II)Lorg/apache/poi/java/awt/Dimension;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/TextArea;->preferredSize(II)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    return-object p1
.end method

.method public getRows()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/TextArea;->rows:I

    return v0
.end method

.method public getScrollbarVisibility()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/TextArea;->scrollbarVisibility:I

    return v0
.end method

.method public insert(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/java/awt/TextArea;->insertText(Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized insertText(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/TextAreaPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/java/awt/peer/TextAreaPeer;->insert(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public minimumSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/poi/java/awt/TextArea;->rows:I

    if-lez v1, :cond_0

    iget v2, p0, Lorg/apache/poi/java/awt/TextArea;->columns:I

    if-lez v2, :cond_0

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/java/awt/TextArea;->minimumSize(II)Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->minimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public minimumSize(II)Lorg/apache/poi/java/awt/Dimension;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/TextAreaPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lorg/apache/poi/java/awt/peer/TextAreaPeer;->getMinimumSize(II)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->minimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public paramString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/TextArea;->scrollbarVisibility:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "invalid display policy"

    goto :goto_0

    :cond_0
    const-string v0, "none"

    goto :goto_0

    :cond_1
    const-string v0, "horizontal-only"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "vertical-only"

    goto :goto_0

    :cond_3
    const-string v0, "both"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/poi/java/awt/TextComponent;->paramString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/TextArea;->rows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",columns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/java/awt/TextArea;->columns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",scrollbarVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public preferredSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/poi/java/awt/TextArea;->rows:I

    if-lez v1, :cond_0

    iget v2, p0, Lorg/apache/poi/java/awt/TextArea;->columns:I

    if-lez v2, :cond_0

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/java/awt/TextArea;->preferredSize(II)Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->preferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public preferredSize(II)Lorg/apache/poi/java/awt/Dimension;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/TextAreaPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lorg/apache/poi/java/awt/peer/TextAreaPeer;->getPreferredSize(II)Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->preferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object p1

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public replaceRange(Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/TextArea;->replaceText(Ljava/lang/String;II)V

    return-void
.end method

.method public declared-synchronized replaceText(Ljava/lang/String;II)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/TextAreaPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/java/awt/peer/TextAreaPeer;->replaceRange(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/TextComponent;->text:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setColumns(I)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/TextArea;->columns:I

    if-ltz p1, :cond_1

    if-eq p1, v0, :cond_0

    iput p1, p0, Lorg/apache/poi/java/awt/TextArea;->columns:I

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidate()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "columns less than zero."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRows(I)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/TextArea;->rows:I

    if-ltz p1, :cond_1

    if-eq p1, v0, :cond_0

    iput p1, p0, Lorg/apache/poi/java/awt/TextArea;->rows:I

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidate()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "rows less than zero."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
