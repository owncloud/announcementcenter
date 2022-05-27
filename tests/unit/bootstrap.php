<?php
if (!\defined('PHPUNIT_RUN')) {
	\define('PHPUNIT_RUN', 1);
}

require_once __DIR__ . '/../../../../lib/base.php';

\OC::$composerAutoloader->addPsr4('Test\\', OC::$SERVERROOT . '/tests/lib/', true);
// load announcementcenter unit test classes
\OC::$composerAutoloader->addPsr4('OCA\\AnnouncementCenter\\Tests\\Unit\\', __DIR__, true);
