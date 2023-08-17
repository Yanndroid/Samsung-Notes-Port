.class final Lorg/apache/xmlbeans/impl/store/Saver$TextReader;
.super Ljava/io/Reader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextReader"
.end annotation


# instance fields
.field private _closed:Z

.field private _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field private _textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_closed:Z

    return-void
.end method

.method private checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_closed:Z

    return-void
.end method

.method public read()I
    .locals 3

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->checkClosed()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->read()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->read()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public read([C)I
    .locals 4

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->checkClosed()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p1

    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->read([CII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    if-nez p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    array-length v3, p1

    :goto_1
    invoke-virtual {v2, p1, v1, v3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->read([CII)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public read([CII)I
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->checkClosed()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->read([CII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->read([CII)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public ready()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->_closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
